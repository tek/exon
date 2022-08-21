{
  description = "Monoidal Quasiquote Interpolation";

  inputs.hix.url = git+https://git.tryp.io/tek/hix;

  outputs = { hix, ... }:
  let
    all = { hackage, ... }: {
      incipit-base = hackage "0.3.0.0" "1078yyl5k94c9pr16rqd1i1g1fj8zx4iswhk7rcxb8f10fjqzapg";
    };

  in hix.lib.flake ({ config, lib, ... }: {
    base = ./.;
    packages.exon = ./packages/exon;
    overrides = { inherit all; };
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-base";
      preludeModule = "IncipitBase";
    };
  });
}
