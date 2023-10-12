{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro {
    ghcVersions = ["ghc92" "ghc94" "ghc96"];
    hackage.versionFile = "ops/version.nix";
    gen-overrides.enable = true;

    envs.ghc96.overrides = {hackage, jailbreak, ...}: {
      ghc-hs-meta = hackage "0.1.3.0" "0imnz5gx5z23gnras211h1bm1js75wmy72mvkzw826jys1q5cshg";
      vector-binary-instances = jailbreak;
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
          "parsec"
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
