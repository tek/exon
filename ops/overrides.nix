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
    sha256 = "0imnz5gx5z23gnras211h1bm1js75wmy72mvkzw826jys1q5cshg";
    ver = "0.1.3.0";
  };
  drv = { mkDerivation, base, bytestring, ghc, ghc-boot, hspec, lib
, template-haskell
}:
mkDerivation {
  pname = "ghc-hs-meta";
  version = "0.1.3.0";
  src = /nix/store/9650lm5fs6vrbbs1hhbxhdg74k8al8k5-source;
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