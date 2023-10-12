{
dev = {
};
ghc92 = {
};
ghc94 = {
};
ghc96 = {
  ghc-hs-meta = {
  meta = {
    sha256 = "1072k0a5svmw2f7sniq3z3n9ga4y8l5kx3qnsnbfsp4xhgcyq26i";
    ver = "0.1.2.0";
  };
  drv = { mkDerivation, base, bytestring, ghc, ghc-boot, hspec, lib
, template-haskell
}:
mkDerivation {
  pname = "ghc-hs-meta";
  version = "0.1.2.0";
  src = /nix/store/23qd8fbqag6gmpwm9xi7fwks5byy13w6-source;
  libraryHaskellDepends = [
    base bytestring ghc ghc-boot template-haskell
  ];
  testHaskellDepends = [
    base bytestring ghc ghc-boot hspec template-haskell
  ];
  description = "Translate Haskell source to Template Haskell expression";
  license = lib.licenses.bsd3;
}
;
}
;
};
hls = {
};
min = {
};
}