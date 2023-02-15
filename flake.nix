{
  description = "Customizable Quasiquote Interpolation";

  inputs = {
    hix.url = "git+https://git.tryp.io/tek/hix";
    hls.url = "github:haskell/haskell-language-server?ref=1.9.0.0";
  };

  outputs = { hix, hls, ... }:
  let
    all = { hackage, bench, notest, ... }: {
      incipit-base = hackage "0.5.0.0" "02fdppamn00m94xqi4zhm6sl1ndg6lhn24m74w24pq84h44mynl6";
      ghcid = notest;
      flatparse = hackage "0.4.0.1" "1i91kd28vabbw4i7yc44k08i80340r9qd6z59b3fmj1n9vlnmgpz";
      exon = bench;
    };

  in hix.lib.pro ({ config, lib, ... }: {
    devGhc.compiler = "ghc943";
    packages.exon = ./packages/exon;
    overrides = { inherit all; };
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-base";
      preludeModule = "IncipitBase";
    };
    shell.ghcid.vanilla = false;
    shell.hls.package = hls.packages.${config.system}.haskell-language-server-943;
  });
}
