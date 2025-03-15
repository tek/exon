{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro ({config, lib, ...}: {
    ghcVersions = ["ghc92" "ghc94" "ghc96" "ghc98" "ghc910"];
    compat.versions = ["ghc94" "ghc96"];
    hackage.versionFile = "ops/version.nix";
    gen-overrides.enable = true;

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
      latest.compiler = "ghc910";
      latest.envs.solverOverrides = {jailbreak, ...}: {
        incipit-base = jailbreak;
      };
    };

    envs.dev.overrides = {bench, ...}: {
      exon = bench;
    };

    envs.latest.overrides = {jailbreak, ...}: {
      optparse-applicative = jailbreak;
    };

    envs.ghc910.overrides = {jailbreak, ...}: {
      incipit-base = jailbreak;
    };

  });
}
