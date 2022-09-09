{
  description = "Customizable Quasiquote Interpolation";

  inputs.hix.url = git+https://git.tryp.io/tek/hix;

  outputs = { hix, ... }:
  let
    all = { hackage, ... }: {
      flatparse = hackage "0.3.5.1" "0gbn93jnmj0x8akcani59ivnqzyyv1mzw0jmmc3pfklq7x9b17cm";
      incipit-base = hackage "0.3.0.0" "1078yyl5k94c9pr16rqd1i1g1fj8zx4iswhk7rcxb8f10fjqzapg";
    };

    ghc8107 = { hackage, ... }: {
      generics-sop = hackage "0.5.1.1" "1ydivb44aplbajd6y8gr8s6wk12j44g1k48f3bcfp91maxb6igl9";
      ghc-hs-meta = hackage "0.1.0.0" "1mw3hkl5d4xrvgypwl9iklc8zhdsi02d0h0kqiga3jygvch6r4p3";
    };

    ghc924 = { jailbreak, notest, ... }: {
      type-errors-pretty = notest jailbreak;
    };

  in hix.lib.flake ({ config, lib, ... }: {
    devGhc.compiler = "ghc902";
    packages.exon = ./packages/exon;
    overrides = { inherit all ghc924 ghc8107; };
    compat.projects."884".enable = false;
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-base";
      preludeModule = "IncipitBase";
    };
  });
}
