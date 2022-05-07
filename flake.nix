{
  description = "Monoidal Quasiquote Interpolation";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ... }:
  let
    all = { hackage, source, jailbreak, ... }: {
      incipit-base = hackage "0.1.0.3" "0hr3msiy3cla536hz5a4bp9lnkyj4190l3glqwqrk062i078xrsj";
      flatparse = hackage "0.3.2.0" "01w71985b9ndg4wkfxqxjj7f1cynji6vp71akr7ivpmxn2drxspa";
    };

  in hix.lib.flake {
    base = ./.;
    packages.exon = ./packages/exon;
    overrides = { inherit all; };
    hackage.versionFile = "ops/hpack/shared/meta.yaml";
    ghci.preludePackage = "incipit-base";
  };
}
