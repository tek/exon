{
  description = "Monoidal Quasiquote Interpolation";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ... }:
  let
    common = { hackage, source, jailbreak, ... }: {
      flatparse = hackage "0.2.1.0" "1s9a40sqf07fpm6dcpinmgdczm6vl26vy2agkaivgsfxm3w5qsha";
    };

    main = { hackage, source, ... }: {
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
      tasty-hedgehog = hackage "1.1.0.0" "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
    };

  in hix.flake {
    base = ./.;
    packages.exon = "packages/exon";
    overrides = [common main];
    compatOverrides = common;
    compatVersions = ["8104" "884"];
    versionFile = "ops/hpack/shared/meta.yaml";
  };
}
