{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro {
    ghcVersions = ["ghc92" "ghc94" "ghc96" "ghc98"];
    compat.versions = ["ghc94" "ghc96"];
    hackage.versionFile = "ops/version.nix";
    gen-overrides.enable = true;
    managed = {
      enable = true;
      lower.enable = true;
      latest.compiler = "ghc98";
    };

    # envs.dev.overrides = {hackage, jailbreak, ...}: {
    #   hedgehog = hackage "1.4" "1qxxhs720im0wpa5lsca0l8qsfmhbyphd1aq01nv96v29lgv795b";
    #   tasty-hedgehog = hackage "1.4.0.2" "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
    # };

    # envs.ghc98.overrides = {super, hackage, jailbreak, notest, ...}: {
    #   criterion = jailbreak;
    #   hedgehog = jailbreak;
    #   tasty-hedgehog = jailbreak;
    #   aeson = hackage "2.2.1.0" "1y6pc2nj4y41zmk9dsa11r2l8pdn1mr60fbmbjg25pbnzz3b38j2";
    #   semigroupoids = jailbreak;
    #   unliftio-core = jailbreak;
    #   unliftio = jailbreak;
    #   lifted-base = notest;
    #   bifunctors = jailbreak (hackage "5.6.1" "12k2v7334brn4v7yg3vjd6yv6sh4pzffc3d89qgc2llw7ncv4krw");
    #   incipit-base = hackage "0.6.0.0" "1hck35yfy0dcgimgnd90w02zvv7x7k456bljrbx2mwxalnhav9gf";
    #   th-abstraction = hackage "0.6.0.0" "1w07ysxrbjm1rhlg9nhlq5y72s5wr4vqmcy99chvyb56wka0grbq";
    #   tagged = hackage "0.8.8" "1m2bcf0sr1z28gnl2k8xibcsv80kd35816c9c7ji045jbxg27xd9";
    #   # type-errors = jailbreak;
    #   hspec = super.hspec_2_11_6;
    #   hspec-core = super.hspec_2_11_6;
    #   hspec-meta = super.hspec_2_11_6;
    #   hspec-discover = super.hspec_2_11_6;
    #   doctest = hackage "0.22.2" "193vrmxcnn9fxn7bc6y7jg8qwr13z9a26qqn0c294mn67il18cqn";
    # };

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
            version = ">= 0.4 && < 0.7";
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
          "ghc"
          "parsec"
          "template-haskell"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "hedgehog >= 1.1 && < 1.5"
          "tasty >= 1.4 && < 1.6"
          "tasty-hedgehog >= 1.3 && < 1.5"
          "template-haskell"
        ];
      };

      benchmark = {
        enable = true;
        dependencies = [
          "criterion >= 1.5 && < 1.7"
        ];
      };

    };

    ghci.args = ["-package ghc"];

  };
}
