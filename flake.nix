{
  description = "Customizable Quasiquote Interpolation";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = { hix, ... }:
  let
    all = { hackage, bench, ... }: {
      incipit-base = hackage "0.5.0.0" "02fdppamn00m94xqi4zhm6sl1ndg6lhn24m74w24pq84h44mynl6";
      flatparse = hackage "0.3.5.1" "0gbn93jnmj0x8akcani59ivnqzyyv1mzw0jmmc3pfklq7x9b17cm";
      exon = bench;
    };

  in hix.lib.pro ({ config, lib, ... }: {
    devGhc.compiler = "ghc902";
    packages.exon = ./packages/exon;
    overrides = { inherit all; };
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-base";
      preludeModule = "IncipitBase";
    };
    compat.projects."943".enable = false;
  });
}
