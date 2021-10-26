{
  description = "Monoidal Quasiquote Interpolation";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ... }:
  let
    common = { hackage, source, jailbreak, ... }: {
      flatparse = hackage "0.3.1.0" "15nx2p08pqka0136xfppw344a60rn3fvsx4adiz15k37cyj25zi2";
    };

    relude = { hackage, ... }: {
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
    };

    main = { hackage, source, ... }: {
      tasty-hedgehog = hackage "1.1.0.0" "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
    };

  in hix.flake {
    base = ./.;
    packages.exon = "packages/exon";
    overrides = [common relude main];
    compatOverrides = { all = common; ghc901 = relude; };
    # compatVersions = ["8107" "884"];
    versionFile = "ops/hpack/shared/meta.yaml";
    ghcid.easy-hls = false;
  };
}
