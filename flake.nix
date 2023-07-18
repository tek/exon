{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = { hix, ... }: hix.lib.pro {
    ghcVersions = ["ghc810" "ghc90" "ghc92" "ghc94"];
    hackage.versionFile = "ops/version.nix";
    gen-overrides.enable = true;

    overrides = { hackage, bench, notest, ... }: {
      flatparse = hackage "0.4.0.1" "1i91kd28vabbw4i7yc44k08i80340r9qd6z59b3fmj1n9vlnmgpz";
      exon = bench;
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

      library = {
        enable = true;
        dependencies = [
          "flatparse ^>= 0.4"
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
          "criterion"
        ];
      };

    };

  };
}
