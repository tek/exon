{
  description = "Monoidal Quasiquote Interpolation";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ... }:
  let
    all = { hackage, ... }: {
      incipit-base = hackage "0.3.0.0" "1078yyl5k94c9pr16rqd1i1g1fj8zx4iswhk7rcxb8f10fjqzapg";
      flatparse = hackage "0.3.2.0" "01w71985b9ndg4wkfxqxjj7f1cynji6vp71akr7ivpmxn2drxspa";
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
