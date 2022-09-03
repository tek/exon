{
  description = "Customizable Quasiquote Interpolation";

  inputs.hix.url = git+https://git.tryp.io/tek/hix;

  outputs = { hix, ... }:
  let
    all = { hackage, ... }: {
      incipit-base = hackage "0.3.0.0" "1078yyl5k94c9pr16rqd1i1g1fj8zx4iswhk7rcxb8f10fjqzapg";
      flatparse = hackage "0.3.5.1" "0gbn93jnmj0x8akcani59ivnqzyyv1mzw0jmmc3pfklq7x9b17cm";
    };

    ghc924 = { jailbreak, notest, ... }: {
      type-errors-pretty = notest jailbreak;
    };

  in hix.lib.flake ({ config, lib, ... }: {
    devGhc.compiler = "ghc902";
    packages.exon = ./packages/exon;
    overrides = { inherit all ghc924; };
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-base";
      preludeModule = "IncipitBase";
    };
  });
}
