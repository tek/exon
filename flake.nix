{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";
  inputs.hix.inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = {hix, ...}: hix.lib.pro ({config, lib, ...}: let

    overrides = {hackage, jailbreak, ...}: {
      incipit-base = hackage "0.6.1.0" "0iyyvxpyyybn5ygr875pav6g5hbs00wa9jbr7qslszqpkfpy5x33";
      microstache = jailbreak;
    };

  in {
    ghcVersions = ["ghc92" "ghc94" "ghc96" "ghc98" "ghc910"];
    compat.versions = ["ghc94" "ghc96"];
    hackage.versionFile = "ops/version.nix";
    gen-overrides.enable = true;
    managed = {
      enable = true;
      lower.enable = true;
      latest.compiler = "ghc910";
      forceBounds.base.upper = "5";
      latest.envs.solverOverrides = overrides;
    };

    # TODO needs to be fixed in hix – since this flake is overriding the nixpkgs input, the hix cli gets a different
    # Cabal override mess than it's prepared for.
    # The hixCli ghc needs to be built with an independent nixpkgs.
    internal.hixCli.ghc.nixpkgs = lib.mkForce (builtins.fetchTarball {
      url = "https://github.com/nixos/nixpkgs/archive/e913ae340076bbb73d9f4d3d065c2bca7caafb16.tar.gz";
      sha256 = "07qjibn85hc6p8c7lwg00fwpyqjlmaxncz9wa2l6qpy1hsk51k8f";
    });

    envs.latest.overrides = overrides;
    envs.ghc910.overrides = overrides;

    packages.exon = {
      src = ./packages/exon;

      cabal = {
        license = "BSD-2-Clause-Patent";
        license-file = "LICENSE";
        author = "Torsten Schmits";
        prelude = {
          enable = true;
          package = "incipit-base";
          module = "IncipitBase";
        };
        meta = {
          synopsis = "Customizable quasiquote interpolation";
          maintainer = "hackage@tryp.io";
          category = "String";
          github = "tek/exon";
          extra-source-files = ["readme.md" "changelog.md"];
        };
      };

      override = {bench, ...}: bench;

      library = {
        enable = true;
        dependencies = [
          "ghc"
          "parsec"
          "template-haskell"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "hedgehog"
          "tasty"
          "tasty-hedgehog"
          "template-haskell"
        ];
      };

      benchmark = {
        enable = true;
        dependencies = [
          "criterion"
        ];
      };

    };

    ghci.args = ["-package ghc"];

  });
}
