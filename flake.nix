{
  description = "Customizable quasiquote interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro ({config, lib, ...}: {
    ghcVersions = ["ghc92" "ghc94" "ghc96" "ghc98" "ghc910" "ghc912"];
    hackage.versionFile = "ops/version.nix";
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
      latest.compiler = "ghc912";
    };

    hackage.repos."hackage.haskell.org" = {
      user = "tek";
      password = "";
    };

    envs.dev.overrides = {bench, ...}: {
      exon = bench;
    };

    envs.latest.overrides = {hackage, jailbreak, notest, ...}: {
      optparse-applicative = jailbreak;
      boring = jailbreak;
      generic-deriving = jailbreak;
      happy = notest;
      lifted-base = notest;
    };

    envs.ghc910.overrides = {jailbreak, ...}: {
      incipit-base = jailbreak;
    };

    envs.ghc912.overrides = {hackage, jailbreak, notest, ...}: {
      boring = jailbreak;
      generic-deriving = jailbreak;
      happy = notest;
      hashable = jailbreak;
      hedgehog = jailbreak;
      incipit-base = jailbreak;
      lifted-base = notest;
      th-abstraction = hackage "0.7.1.0" "09wr7x9bpzyrys8id1mavk9wvqhh2smxdkfwi82kpcycm7a1z7sx";
    };

    ui.experimental.managed-maint = true;

    internal.hixCli.dev = true;

  });
}
