{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro {
    ghcVersions = ["ghc92" "ghc94" "ghc96"];
    hackage.versionFile = "ops/version.nix";
    gen-overrides.enable = true;

    envs.ghc96.overrides = {hackage, jailbreak, ...}: {
      ghc-hs-meta = hackage "0.1.2.0" "1072k0a5svmw2f7sniq3z3n9ga4y8l5kx3qnsnbfsp4xhgcyq26i";
      vector-binary-instances = jailbreak;
    };

    overrides = {hackage, ...}: {
      flatparse = hackage "0.5.0.1" "0y6axksh2hqp8v58676a7zmwf0in7v6hmyfv8sfdx4x0acq2vjhr";
    };

    packages.exon = {
      src = ./packages/exon;

      cabal = {
        license = "BSD-2-Clause-Patent";
        license-file = "LICENSE";
        author = "Torsten Schmits";
        prelude = {
          enable = true;
          package = {
            name = "incipit-base";
            version = ">= 0.4 && < 0.6";
          };
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
          "flatparse >= 0.4 && < 0.6"
          "generics-sop ^>= 0.5.1.1"
          "ghc-hs-meta ^>= 0.1"
          "template-haskell"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "hedgehog >= 1.1 && < 1.3"
          "tasty ^>= 1.4"
          "tasty-hedgehog >= 1.3 && < 1.5"
          "template-haskell"
        ];
      };

      benchmark = {
        enable = true;
        dependencies = [
          "exon"
          "criterion >= 1.5 && < 1.7"
        ];
      };

    };

  };
}
