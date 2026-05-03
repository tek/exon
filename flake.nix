{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";
  inputs.hix.inputs.nixpkgs.url = "github:nixos/nixpkgs/15f4ee454b1dce334612fa6843b3e05cf546efab";

  outputs = {hix, ...}: hix.lib.pro ({config, lib, ...}: {
    ghcVersions = ["ghc98" "ghc910" "ghc912" "ghc914"];
    release.versionFile = "ops/version.nix";
    gen-overrides.enable = true;

    packages.exon = {
      src = ./packages/exon;

      cabal = {
        language = "GHC2021";
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

    managed = {
      enable = true;
      lower.enable = true;
      latest.compiler = "ghc914";
      lower.compiler = "ghc94";
    };

    hackage.repos."hackage.haskell.org".user = "tek";

    envs.dev.overrides = {bench, ...}: {
      exon = bench;
    };

    package-sets.ghc914.overrides = {jailbreak, ...}: {
      incipit-base = jailbreak;
    };

    ui.experimental.managed-maint = true;

    internal.hixCli.dev = true;

  });
}
