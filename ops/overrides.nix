{
  latest = {
    Glob = {
  meta = {
    sha256 = "1v74ynmlz1qi8m5l7jkbyhjfmrjhklrzhjwh2lpfhrr285n1008l";
    url = "https://hackage.haskell.org";
    ver = "0.10.2";
  };
  drv = { mkDerivation, base, containers, directory, dlist, filepath, HUnit
, lib, QuickCheck, test-framework, test-framework-hunit
, test-framework-quickcheck2, transformers, transformers-compat
}:
mkDerivation {
  pname = "Glob";
  version = "0.10.2";
  src = /nix/store/qqbh8al28fby77yqyqqcaws8hgcr7h99-source;
  libraryHaskellDepends = [
    base containers directory dlist filepath transformers
    transformers-compat
  ];
  testHaskellDepends = [
    base containers directory dlist filepath HUnit QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2
    transformers transformers-compat
  ];
  homepage = "http://iki.fi/matti.niemenmaa/glob/";
  description = "Globbing library";
  license = lib.licenses.bsd3;
}
;
}
;
    OneTuple = {
  meta = {
    sha256 = "1940dmd9rhr5fvlwidqm0bcm1015kgbr820lvfdr993rcy1mmxdg";
    url = "https://hackage.haskell.org";
    ver = "0.4.2";
  };
  drv = { mkDerivation, base, ghc-prim, hashable, lib, template-haskell }:
mkDerivation {
  pname = "OneTuple";
  version = "0.4.2";
  src = /nix/store/klcqnigvscq7n07hlfn1jy7dldfgl7sj-source;
  libraryHaskellDepends = [ base ghc-prim template-haskell ];
  testHaskellDepends = [ base hashable template-haskell ];
  description = "Singleton Tuple";
  license = lib.licenses.bsd3;
}
;
}
;
    Only = {
  meta = {
    sha256 = "1a8a5sapa8jpciglsv98snx2khkn9hplh8rn41p47j9796gxb5jw";
    url = "https://hackage.haskell.org";
    ver = "0.1";
  };
  drv = { mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "Only";
  version = "0.1";
  src = /nix/store/3hmhf0l37sp5gn3qcqa7vrzd7yfp8kxa-source;
  libraryHaskellDepends = [ base deepseq ];
  description = "The 1-tuple type or single-value \"collection\"";
  license = lib.licenses.bsd3;
}
;
}
;
    QuickCheck = {
  meta = {
    sha256 = "1dcqv7z83wrbv7wvm7hdvjapfyzi9g4wjwsh9x6zh9ff622z53lb";
    url = "https://hackage.haskell.org";
    ver = "2.15.0.1";
  };
  drv = { mkDerivation, base, containers, deepseq, lib, process, random
, splitmix, template-haskell, transformers
}:
mkDerivation {
  pname = "QuickCheck";
  version = "2.15.0.1";
  src = /nix/store/wszsbjjnfpbj1yfnlsp20rsa19pkfqb2-source;
  libraryHaskellDepends = [
    base containers deepseq random splitmix template-haskell
    transformers
  ];
  testHaskellDepends = [ base containers deepseq process ];
  homepage = "https://github.com/nick8325/quickcheck";
  description = "Automatic testing of Haskell programs";
  license = lib.licenses.bsd3;
}
;
}
;
    StateVar = {
  meta = {
    sha256 = "1grkv7sinn3wlk0xgwn4in5xxqmssrrfhp2hjxy9imhh8li40grf";
    url = "https://hackage.haskell.org";
    ver = "1.2.2";
  };
  drv = { mkDerivation, base, lib, stm, transformers }:
mkDerivation {
  pname = "StateVar";
  version = "1.2.2";
  src = /nix/store/ivmsjzc092g2051f0p7awq5ijzza7km8-source;
  libraryHaskellDepends = [ base stm transformers ];
  homepage = "https://github.com/haskell-opengl/StateVar";
  description = "State variables";
  license = lib.licenses.bsd3;
}
;
}
;
    aeson = {
  meta = {
    sha256 = "1a9a0z6ljbck5scwkk9r9p04y9avn9vja3n063lyqgn2v1vjb1sp";
    url = "https://hackage.haskell.org";
    ver = "2.2.3.0";
  };
  drv = { mkDerivation, base, base-compat, base-orphans, base16-bytestring
, bytestring, character-ps, containers, data-fix, deepseq, Diff
, directory, dlist, exceptions, filepath, generic-deriving
, generically, ghc-prim, hashable, indexed-traversable
, integer-conversion, integer-logarithms, lib, network-uri
, OneTuple, primitive, QuickCheck, quickcheck-instances, scientific
, semialign, strict, tagged, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, template-haskell, text, text-iso8601
, text-short, th-abstraction, these, time, time-compat
, unordered-containers, uuid-types, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.2.3.0";
  src = /nix/store/vq7zl31in59prbsdq05klwd4syk31nfv-source;
  libraryHaskellDepends = [
    base bytestring character-ps containers data-fix deepseq dlist
    exceptions generically ghc-prim hashable indexed-traversable
    integer-conversion integer-logarithms network-uri OneTuple
    primitive QuickCheck scientific semialign strict tagged
    template-haskell text text-iso8601 text-short th-abstraction these
    time time-compat unordered-containers uuid-types vector witherable
  ];
  testHaskellDepends = [
    base base-compat base-orphans base16-bytestring bytestring
    containers data-fix deepseq Diff directory dlist filepath
    generic-deriving generically ghc-prim hashable indexed-traversable
    integer-logarithms network-uri OneTuple primitive QuickCheck
    quickcheck-instances scientific strict tagged tasty tasty-golden
    tasty-hunit tasty-quickcheck template-haskell text text-short these
    time time-compat unordered-containers uuid-types vector
  ];
  homepage = "https://github.com/haskell/aeson";
  description = "Fast JSON parsing and encoding";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    assoc = {
  meta = {
    sha256 = "0v4j6bn73dm3xnpkfdx0dg7q4vypl4k31pg35vycfp8w00jv6b6q";
    url = "https://hackage.haskell.org";
    ver = "1.1.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "assoc";
  version = "1.1.1";
  src = /nix/store/zxndaprg8rmkrgyxsbwsc3bq5s3hqrbw-source;
  libraryHaskellDepends = [ base ];
  description = "swap and assoc: Symmetric and Semigroupy Bifunctors";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    attoparsec = {
  meta = {
    sha256 = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
    url = "https://hackage.haskell.org";
    ver = "0.14.4";
  };
  drv = { mkDerivation, array, base, bytestring, case-insensitive
, containers, deepseq, directory, filepath, ghc-prim, http-types
, lib, parsec, QuickCheck, quickcheck-unicode, scientific, tasty
, tasty-bench, tasty-quickcheck, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "attoparsec";
  version = "0.14.4";
  src = /nix/store/cy9l5kw9c213v64k3q07lgxaga8yai9b-source;
  libraryHaskellDepends = [
    array base bytestring containers deepseq ghc-prim scientific text
    transformers
  ];
  testHaskellDepends = [
    array base bytestring deepseq QuickCheck quickcheck-unicode
    scientific tasty tasty-quickcheck text transformers vector
  ];
  benchmarkHaskellDepends = [
    array base bytestring case-insensitive containers deepseq directory
    filepath ghc-prim http-types parsec scientific tasty-bench text
    transformers unordered-containers vector
  ];
  doHaddock = false;
  homepage = "https://github.com/bgamari/attoparsec";
  description = "Fast combinator parsing for bytestrings and text";
  license = lib.licenses.bsd3;
}
;
}
;
    base-compat = {
  meta = {
    sha256 = "191rfsma0ig8gc05qawwcc418qimdsjmxkgn7gvcx6wwp0297h3b";
    url = "https://hackage.haskell.org";
    ver = "0.14.1";
  };
  drv = { mkDerivation, base, ghc-prim, lib, unix }:
mkDerivation {
  pname = "base-compat";
  version = "0.14.1";
  src = /nix/store/74r24h5l2z4i83s2byfqs3c05abj28is-source;
  libraryHaskellDepends = [ base ghc-prim unix ];
  description = "A compatibility layer for base";
  license = lib.licenses.mit;
}
;
}
;
    base-compat-batteries = {
  meta = {
    sha256 = "0racz6cnw0bngwpwhyfhm7q7l492zs0f07wq6wvbzlkfac7lfd8y";
    url = "https://hackage.haskell.org";
    ver = "0.14.1";
  };
  drv = { mkDerivation, base, base-compat, ghc-prim, hspec, hspec-discover
, lib, QuickCheck
}:
mkDerivation {
  pname = "base-compat-batteries";
  version = "0.14.1";
  src = /nix/store/v2g3jvgzzkwnbwcdqs4yrw70nsphys25-source;
  libraryHaskellDepends = [ base base-compat ghc-prim ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  description = "base-compat with extra batteries";
  license = lib.licenses.mit;
}
;
}
;
    bifunctors = {
  meta = {
    sha256 = "1g0z6q5z04zgp7kaf917nrj2iiz1lsqh8ji5ny5ly534zr9zya2m";
    url = "https://hackage.haskell.org";
    ver = "5.6.2";
  };
  drv = { mkDerivation, assoc, base, comonad, containers, hspec
, hspec-discover, lib, QuickCheck, tagged, template-haskell
, th-abstraction, transformers, transformers-compat
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.6.2";
  src = /nix/store/a4rjc37gkzldsfvpg42wsldlhpmxnbzi-source;
  libraryHaskellDepends = [
    assoc base comonad containers tagged template-haskell
    th-abstraction transformers
  ];
  testHaskellDepends = [
    base hspec QuickCheck template-haskell transformers
    transformers-compat
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = lib.licenses.bsd3;
}
;
}
;
    binary-orphans = {
  meta = {
    sha256 = "0yv6h7zj61s04myidbqlq44vlcar63gshx6n1mhl180ffaij38yf";
    url = "https://hackage.haskell.org";
    ver = "1.0.5";
  };
  drv = { mkDerivation, base, binary, lib, OneTuple, QuickCheck
, quickcheck-instances, tagged, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "binary-orphans";
  version = "1.0.5";
  src = /nix/store/pymr9bnqss6p250d4bmlhq5vq1ypnqcp-source;
  libraryHaskellDepends = [ base binary ];
  testHaskellDepends = [
    base binary OneTuple QuickCheck quickcheck-instances tagged tasty
    tasty-quickcheck
  ];
  description = "Compatibility package for binary; provides instances";
  license = lib.licenses.bsd3;
}
;
}
;
    bitvec = {
  meta = {
    sha256 = "1ms8sy3dc2yjkxy4m5nam2wyv9rdni8npm4zx07j7k8mn3gw763a";
    url = "https://hackage.haskell.org";
    ver = "1.1.5.0";
  };
  drv = { mkDerivation, base, bytestring, containers, deepseq, ghc-bignum
, lib, primitive, quickcheck-classes, quickcheck-classes-base
, random, tasty, tasty-bench, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "bitvec";
  version = "1.1.5.0";
  src = /nix/store/czfi5brz0qlm01pb7qs5dbr94400ix6v-source;
  libraryHaskellDepends = [
    base bytestring deepseq ghc-bignum primitive vector
  ];
  testHaskellDepends = [
    base ghc-bignum primitive quickcheck-classes
    quickcheck-classes-base tasty tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [
    base containers ghc-bignum random tasty tasty-bench vector
  ];
  homepage = "https://github.com/Bodigrim/bitvec";
  description = "Space-efficient bit vectors";
  license = lib.licenses.bsd3;
}
;
}
;
    cassava = {
  meta = {
    sha256 = "0zhzl8ffnhizdxfc0lv64qliyqk4s84qqmklq2g2hg542n2v2drp";
    url = "https://hackage.haskell.org";
    ver = "0.5.3.2";
  };
  drv = { mkDerivation, array, attoparsec, base, bytestring, containers
, deepseq, hashable, HUnit, lib, Only, QuickCheck
, quickcheck-instances, scientific, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
, text-short, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "cassava";
  version = "0.5.3.2";
  src = /nix/store/dzcg4ir9180wp1s4pxq2nb0nphmy0lmg-source;
  configureFlags = [ "-f-bytestring--lt-0_10_4" ];
  libraryHaskellDepends = [
    array attoparsec base bytestring containers deepseq hashable Only
    scientific text text-short transformers unordered-containers vector
  ];
  testHaskellDepends = [
    attoparsec base bytestring hashable HUnit QuickCheck
    quickcheck-instances scientific test-framework test-framework-hunit
    test-framework-quickcheck2 text unordered-containers vector
  ];
  homepage = "https://github.com/haskell-hvr/cassava";
  description = "A CSV parsing and encoding library";
  license = lib.licenses.bsd3;
}
;
}
;
    character-ps = {
  meta = {
    sha256 = "13yvm3ifpk6kfqba49r1xz0xyxcn0jw7xdkkblzsb5v0nf64g4dx";
    url = "https://hackage.haskell.org";
    ver = "0.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "character-ps";
  version = "0.1";
  src = /nix/store/4apydpmp9k1mpy7yrixfm1g4sddlwipd-source;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/phadej/character-ps";
  description = "Pattern synonyms for ASCII characters for Word8, Word16 etc";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    code-page = {
  meta = {
    sha256 = "1g6adshrqhn21b61vxhjzjzxvw7m1ildrq4jaj02wmlg6p6yvcwn";
    url = "https://hackage.haskell.org";
    ver = "0.2.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "code-page";
  version = "0.2.1";
  src = /nix/store/yj8467zy0bv5lx7kfwza4vasvg25i4l8-source;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/RyanGlScott/code-page";
  description = "Windows code page library for Haskell";
  license = lib.licenses.bsd3;
}
;
}
;
    comonad = {
  meta = {
    sha256 = "0j7xm3vdd7icc6z557kph79g3z0c2xfi67lm3yzky0nhxgmcjckd";
    url = "https://hackage.haskell.org";
    ver = "5.0.9";
  };
  drv = { mkDerivation, base, containers, distributive, indexed-traversable
, lib, tagged, transformers, transformers-compat
}:
mkDerivation {
  pname = "comonad";
  version = "5.0.9";
  src = /nix/store/4sck5iys7v409aml7gdxfm13ppshhcx4-source;
  libraryHaskellDepends = [
    base containers distributive indexed-traversable tagged
    transformers transformers-compat
  ];
  homepage = "http://github.com/ekmett/comonad/";
  description = "Comonads";
  license = lib.licenses.bsd3;
}
;
}
;
    contravariant = {
  meta = {
    sha256 = "0931bvc2iv3l29phnq8qsmmkicgz4yfk7c6hrqavs8d5c5j4zpj8";
    url = "https://hackage.haskell.org";
    ver = "1.5.5";
  };
  drv = { mkDerivation, base, lib, StateVar, transformers }:
mkDerivation {
  pname = "contravariant";
  version = "1.5.5";
  src = /nix/store/k7fjmn1484z2s3vx33lynylzf9w186p6-source;
  libraryHaskellDepends = [ base StateVar transformers ];
  homepage = "http://github.com/ekmett/contravariant/";
  description = "Contravariant functors";
  license = lib.licenses.bsd3;
}
;
}
;
    criterion = {
  meta = {
    sha256 = "1kpdawll7v47bdpxfrphjklw6ybz2zfvs90yb0pb111y4ypwar2x";
    url = "https://hackage.haskell.org";
    ver = "1.6.5.0";
  };
  drv = { mkDerivation, aeson, base, base-compat, base-compat-batteries
, binary, binary-orphans, bytestring, cassava, code-page
, containers, criterion-measurement, deepseq, directory, exceptions
, filepath, Glob, HUnit, js-chart, lib, microstache, mtl
, mwc-random, optparse-applicative, prettyprinter
, prettyprinter-ansi-terminal, QuickCheck, statistics, tasty
, tasty-hunit, tasty-quickcheck, text, transformers
, transformers-compat, vector
}:
mkDerivation {
  pname = "criterion";
  version = "1.6.5.0";
  src = /nix/store/fv2fgd3jw4wq7xxrc6lbx4cgrw6iw7qp-source;
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base base-compat-batteries binary binary-orphans bytestring
    cassava code-page containers criterion-measurement deepseq
    directory exceptions filepath Glob js-chart microstache mtl
    mwc-random optparse-applicative prettyprinter
    prettyprinter-ansi-terminal statistics text transformers
    transformers-compat vector
  ];
  executableHaskellDepends = [
    base base-compat-batteries optparse-applicative
  ];
  testHaskellDepends = [
    aeson base base-compat base-compat-batteries bytestring deepseq
    directory HUnit QuickCheck statistics tasty tasty-hunit
    tasty-quickcheck vector
  ];
  homepage = "https://github.com/haskell/criterion";
  description = "Robust, reliable performance measurement and analysis";
  license = lib.licenses.bsd3;
  mainProgram = "criterion-report";
}
;
}
;
    criterion-measurement = {
  meta = {
    sha256 = "0759hlq6sh5rzmfdrb1hswpglh1m534zdp3hnyc5kfnyacnyyigw";
    url = "https://hackage.haskell.org";
    ver = "0.2.3.0";
  };
  drv = { mkDerivation, aeson, base, base-compat, binary, containers
, deepseq, ghc-prim, lib, vector
}:
mkDerivation {
  pname = "criterion-measurement";
  version = "0.2.3.0";
  src = /nix/store/alpx1vq99shknvxs46frvpxhfmi3k3bz-source;
  libraryHaskellDepends = [
    aeson base base-compat binary containers deepseq ghc-prim vector
  ];
  homepage = "https://github.com/haskell/criterion";
  description = "Criterion measurement functionality and associated types";
  license = lib.licenses.bsd3;
}
;
}
;
    data-default-class = {
  meta = {
    sha256 = "0msqv0riwngs5b3vcdrpakhm6m1nllhgyrv58wilh0w4iikclvwm";
    url = "https://hackage.haskell.org";
    ver = "0.2.0.0";
  };
  drv = { mkDerivation, data-default, lib }:
mkDerivation {
  pname = "data-default-class";
  version = "0.2.0.0";
  src = /nix/store/2n0ldlb6pmskahzx9a0y918bv9l86qj0-source;
  libraryHaskellDepends = [ data-default ];
  description = "A class for types with a default value (compatibility shim)";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    data-fix = {
  meta = {
    sha256 = "0x8r2r8gmdvsclaszg90zn7gla6s8r6salbvgfsp0rscdjzj01ry";
    url = "https://hackage.haskell.org";
    ver = "0.3.4";
  };
  drv = { mkDerivation, base, deepseq, hashable, lib }:
mkDerivation {
  pname = "data-fix";
  version = "0.3.4";
  src = /nix/store/rk6gaw2jpjnd6hqhfwd1kr7c0pb5p370-source;
  libraryHaskellDepends = [ base deepseq hashable ];
  homepage = "https://github.com/spell-music/data-fix";
  description = "Fixpoint data types";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    dense-linear-algebra = {
  meta = {
    sha256 = "1xyyixkj0pxy4lxsk08kpwff25g5cqskn1l3jv3spnjxr5q1zhxd";
    url = "https://hackage.haskell.org";
    ver = "0.1.0.0";
  };
  drv = { mkDerivation, base, deepseq, hspec, lib, math-functions
, primitive, QuickCheck, vector, vector-algorithms
, vector-binary-instances, vector-th-unbox
}:
mkDerivation {
  pname = "dense-linear-algebra";
  version = "0.1.0.0";
  src = /nix/store/sak2vv2sbmkkv6bg355zasgaxdcwpn6h-source;
  libraryHaskellDepends = [
    base deepseq math-functions primitive vector vector-algorithms
    vector-binary-instances vector-th-unbox
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  description = "Simple and incomplete pure haskell implementation of linear algebra";
  license = lib.licenses.bsd2;
}
;
}
;
    dlist = {
  meta = {
    sha256 = "1lhckd8srlbjh17krqx0xkp10r9ipwc9lhlwrzxihkdwzsk0as0g";
    url = "https://hackage.haskell.org";
    ver = "1.0";
  };
  drv = { mkDerivation, base, deepseq, lib, QuickCheck }:
mkDerivation {
  pname = "dlist";
  version = "1.0";
  src = /nix/store/ylz0g4nxsgp7zzcb86xsm9k3m17cxfzx-source;
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/spl/dlist";
  description = "Difference lists";
  license = lib.licenses.bsd3;
}
;
}
;
    generically = {
  meta = {
    sha256 = "1658df4jbhzgpsqqgxp71bgry7ak5q0bjlrw6x551g54vvcydbxz";
    url = "https://hackage.haskell.org";
    ver = "0.1.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "generically";
  version = "0.1.1";
  src = /nix/store/gssaqln6inz5bjna79kw4qn39aj1lb6l-source;
  libraryHaskellDepends = [ base ];
  description = "Generically newtype to use with DerivingVia";
  license = lib.licenses.bsd3;
}
;
}
;
    happy = {
  meta = {
    sha256 = "009gfg22ym8597zqlxpvyih36r8jr9l3hj01lbyfjiar86j85kmc";
    url = "https://hackage.haskell.org";
    ver = "2.1.5";
  };
  drv = { mkDerivation, array, base, containers, happy-lib, lib, mtl
, process
}:
mkDerivation {
  pname = "happy";
  version = "2.1.5";
  src = /nix/store/pwkr1jmfbrfqd4n145sbkmli1al837r7-source;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ array base containers happy-lib mtl ];
  testHaskellDepends = [ base process ];
  homepage = "https://www.haskell.org/happy/";
  description = "Happy is a parser generator for Haskell";
  license = lib.licenses.bsd2;
  mainProgram = "happy";
}
;
}
;
    happy-lib = {
  meta = {
    sha256 = "1r70avvngv9smip563qh6hmivqirikg48f91jrp3q1al487b6daz";
    url = "https://hackage.haskell.org";
    ver = "2.1.5";
  };
  drv = { mkDerivation, array, base, containers, lib, mtl, transformers }:
mkDerivation {
  pname = "happy-lib";
  version = "2.1.5";
  src = /nix/store/w344b80m6s4i3h2895q9k9gmfwcfyll4-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ array base containers mtl transformers ];
  doHaddock = false;
  homepage = "https://www.haskell.org/happy/";
  description = "Happy is a parser generator for Haskell implemented using this library";
  license = lib.licensesSpdx."BSD-2-Clause";
}
;
}
;
    hsc2hs = {
  meta = {
    sha256 = "0wdg17kicnp6qbgynha216vihx7nnsglvhn5c089dqpa14hg35zw";
    url = "https://hackage.haskell.org";
    ver = "0.68.10";
  };
  drv = { mkDerivation, base, containers, directory, filepath, HUnit, lib
, process, test-framework, test-framework-hunit
}:
mkDerivation {
  pname = "hsc2hs";
  version = "0.68.10";
  src = /nix/store/14zlpg12331kakcpz0pn3f05xyg8ql8l-source;
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = true;
  executableHaskellDepends = [
    base containers directory filepath process
  ];
  testHaskellDepends = [
    base HUnit test-framework test-framework-hunit
  ];
  description = "A preprocessor that helps with writing Haskell bindings to C code";
  license = lib.licenses.bsd3;
  mainProgram = "hsc2hs";
}
;
}
;
    incipit-base = {
  meta = {
    sha256 = "0z3xvbjcb988vqz8kda4lizf9ahxzrdp76mz5igikf03463z86qv";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.2";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.7.0.2";
  src = /nix/store/jly9r7mld2zsz1wzfnhbillxybx85rvy-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = lib.licensesSpdx."BSD-2-Clause-Patent";
}
;
}
;
    indexed-traversable = {
  meta = {
    sha256 = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
    url = "https://hackage.haskell.org";
    ver = "0.1.4";
  };
  drv = { mkDerivation, array, base, containers, lib, transformers }:
mkDerivation {
  pname = "indexed-traversable";
  version = "0.1.4";
  src = /nix/store/ng2979ljz7gbx6d7ar1qj6v5h2vig11h-source;
  libraryHaskellDepends = [ array base containers transformers ];
  description = "FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    indexed-traversable-instances = {
  meta = {
    sha256 = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
    url = "https://hackage.haskell.org";
    ver = "0.1.2";
  };
  drv = { mkDerivation, base, containers, indexed-traversable, lib
, OneTuple, QuickCheck, quickcheck-instances, tagged, tasty
, tasty-quickcheck, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.2";
  src = /nix/store/dk7n8w7k4bfq5iph1v2z0fl8mh8s3js3-source;
  libraryHaskellDepends = [
    base indexed-traversable OneTuple tagged unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers indexed-traversable OneTuple QuickCheck
    quickcheck-instances tasty tasty-quickcheck transformers
    unordered-containers vector
  ];
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    integer-conversion = {
  meta = {
    sha256 = "0jrch63xc80fq6s14zwi5wcmbrj8zr7anl420sq98aglx3df9yr3";
    url = "https://hackage.haskell.org";
    ver = "0.1.1";
  };
  drv = { mkDerivation, base, bytestring, lib, primitive, QuickCheck, tasty
, tasty-bench, tasty-quickcheck, text
}:
mkDerivation {
  pname = "integer-conversion";
  version = "0.1.1";
  src = /nix/store/8h4fhg09lr94h7izdackqaf0hyf8wnz6-source;
  libraryHaskellDepends = [ base bytestring primitive text ];
  testHaskellDepends = [
    base bytestring QuickCheck tasty tasty-quickcheck text
  ];
  benchmarkHaskellDepends = [ base bytestring tasty-bench text ];
  homepage = "https://github.com/phadej/integer-conversion";
  description = "Conversion from strings to Integer";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    integer-logarithms = {
  meta = {
    sha256 = "0yyj0g5xkm1pjkkr4smf25lpzc936df0fyc4nsj4bx145ggspx3k";
    url = "https://hackage.haskell.org";
    ver = "1.0.4";
  };
  drv = { mkDerivation, array, base, ghc-bignum, ghc-prim, lib, QuickCheck
, smallcheck, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck
}:
mkDerivation {
  pname = "integer-logarithms";
  version = "1.0.4";
  src = /nix/store/k2lb42vrllzklhbrczbxfyq30w2kpd90-source;
  libraryHaskellDepends = [ array base ghc-bignum ghc-prim ];
  testHaskellDepends = [
    base QuickCheck smallcheck tasty tasty-hunit tasty-quickcheck
    tasty-smallcheck
  ];
  homepage = "https://github.com/haskellari/integer-logarithms";
  description = "Integer logarithms";
  license = lib.licenses.mit;
}
;
}
;
    js-chart = {
  meta = {
    sha256 = "06gp1z4aa1bcn954cingac25vv8gc22km28d0glcp14a1bmxjany";
    url = "https://hackage.haskell.org";
    ver = "2.9.4.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "js-chart";
  version = "2.9.4.1";
  src = /nix/store/dz7k1i3sy8hx94kw7rkcpr1czchrv3i4-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/jonascarpay/js-chart#readme";
  description = "Obtain minified chart.js code";
  license = lib.licenses.mit;
}
;
}
;
    math-functions = {
  meta = {
    sha256 = "01mi15cb6wqlizg3vl7x1a543f3adppmffwq65y8033y69hccv6y";
    url = "https://hackage.haskell.org";
    ver = "0.3.4.4";
  };
  drv = { mkDerivation, base, data-default-class, deepseq, erf, lib
, primitive, QuickCheck, random, tasty, tasty-bench, tasty-hunit
, tasty-quickcheck, vector, vector-th-unbox
}:
mkDerivation {
  pname = "math-functions";
  version = "0.3.4.4";
  src = /nix/store/nr1al4kzqbkc9yc33ji9gcqz7ay5impj-source;
  libraryHaskellDepends = [
    base data-default-class deepseq primitive vector
  ];
  testHaskellDepends = [
    base data-default-class deepseq erf primitive QuickCheck tasty
    tasty-hunit tasty-quickcheck vector vector-th-unbox
  ];
  benchmarkHaskellDepends = [
    base data-default-class random tasty-bench vector
  ];
  homepage = "https://github.com/haskell/math-functions";
  description = "Collection of tools for numeric computations";
  license = lib.licenses.bsd2;
}
;
}
;
    microstache = {
  meta = {
    sha256 = "0qcld6ns7sp0m664grdvjp0yzip2yajhqiq1r6nkaicgq2v6dxjr";
    url = "https://hackage.haskell.org";
    ver = "1.0.3";
  };
  drv = { mkDerivation, aeson, base, base-orphans, bytestring, containers
, deepseq, directory, filepath, lib, parsec, tasty, tasty-hunit
, text, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "microstache";
  version = "1.0.3";
  src = /nix/store/4ci68b59vb19kxphcykjxd82ywlgrwp6-source;
  libraryHaskellDepends = [
    aeson base containers deepseq directory filepath parsec text
    transformers unordered-containers vector
  ];
  testHaskellDepends = [
    aeson base base-orphans bytestring containers parsec tasty
    tasty-hunit text
  ];
  homepage = "https://github.com/haskellari/microstache";
  description = "Mustache templates for Haskell";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    mwc-random = {
  meta = {
    sha256 = "1b9y6vqzdybbx0qrdfpxxrhb79kq262s8fk5nvww10h12kdb7n4z";
    url = "https://hackage.haskell.org";
    ver = "0.15.2.0";
  };
  drv = { mkDerivation, base, bytestring, doctest, lib, math-functions
, mersenne-random, mtl, primitive, QuickCheck, random, tasty
, tasty-bench, tasty-hunit, tasty-quickcheck, time, vector
}:
mkDerivation {
  pname = "mwc-random";
  version = "0.15.2.0";
  src = /nix/store/jh7q6wxs45gcjhsl92kbwdi5hnhmgzlw-source;
  libraryHaskellDepends = [
    base math-functions primitive random time vector
  ];
  testHaskellDepends = [
    base bytestring doctest math-functions mtl primitive QuickCheck
    random tasty tasty-hunit tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [
    base mersenne-random random tasty tasty-bench vector
  ];
  doCheck = false;
  homepage = "https://github.com/haskell/mwc-random";
  description = "Fast, high quality pseudo random number generation";
  license = lib.licensesSpdx."BSD-2-Clause";
}
;
}
;
    network-uri = {
  meta = {
    sha256 = "0zj83viziy80f7nybpmc1hki8wrd8pzps31fxns9vxhc1p7l9chj";
    url = "https://hackage.haskell.org";
    ver = "2.6.4.2";
  };
  drv = { mkDerivation, base, criterion, deepseq, HUnit, lib, parsec
, QuickCheck, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, th-compat
}:
mkDerivation {
  pname = "network-uri";
  version = "2.6.4.2";
  src = /nix/store/7rvxjdh21n002q701i7lrx33c3z2y5dl-source;
  libraryHaskellDepends = [
    base deepseq parsec template-haskell th-compat
  ];
  testHaskellDepends = [
    base HUnit QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base criterion deepseq HUnit ];
  homepage = "https://github.com/haskell/network-uri";
  description = "URI manipulation";
  license = lib.licenses.bsd3;
}
;
}
;
    parallel = {
  meta = {
    sha256 = "0j6k54y7mcc8lii99f4i696g67kfzpyma3l7aa9q97w8cj8xv24n";
    url = "https://hackage.haskell.org";
    ver = "3.2.2.0";
  };
  drv = { mkDerivation, array, base, containers, deepseq, ghc-prim, lib }:
mkDerivation {
  pname = "parallel";
  version = "3.2.2.0";
  src = /nix/store/6mfrcpmcxwap1zmjz95g6yvrh0x589kr-source;
  libraryHaskellDepends = [ array base containers deepseq ghc-prim ];
  description = "Parallel programming library";
  license = lib.licenses.bsd3;
}
;
}
;
    scientific = {
  meta = {
    sha256 = "155cbbcyaqyxl2ij7q4fwi07qw3qnhwh4a97ccvrrfpd5lpl22q9";
    url = "https://hackage.haskell.org";
    ver = "0.3.8.0";
  };
  drv = { mkDerivation, base, binary, bytestring, containers, criterion
, deepseq, hashable, integer-logarithms, lib, primitive, QuickCheck
, smallcheck, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck, template-haskell, text
}:
mkDerivation {
  pname = "scientific";
  version = "0.3.8.0";
  src = /nix/store/ap146h1jfkj4cih3kbn9vnfhymsjllxa-source;
  libraryHaskellDepends = [
    base binary bytestring containers deepseq hashable
    integer-logarithms primitive template-haskell text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck smallcheck tasty tasty-hunit
    tasty-quickcheck tasty-smallcheck text
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/basvandijk/scientific";
  description = "Numbers represented using scientific notation";
  license = lib.licenses.bsd3;
}
;
}
;
    semialign = {
  meta = {
    sha256 = "05h1ab484ghd2wzx4pdlsfwiy6rayy0lzwk9yda9il7fjwi9sj7n";
    url = "https://hackage.haskell.org";
    ver = "1.3.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.3.1";
  src = /nix/store/9s434gyr8vwcwm44822v5zzrn2wznq7l-source;
  libraryHaskellDepends = [
    base containers hashable indexed-traversable
    indexed-traversable-instances semigroupoids tagged these
    transformers unordered-containers vector
  ];
  homepage = "https://github.com/haskellari/these";
  description = "Align and Zip type-classes from the common Semialign ancestor";
  license = lib.licenses.bsd3;
}
;
}
;
    semigroupoids = {
  meta = {
    sha256 = "10qd2y5f5m7jzrha1wfbwwybhhghdwkdmk9ajybdz8h88cz9ig2g";
    url = "https://hackage.haskell.org";
    ver = "6.0.1";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, distributive, hashable, lib, tagged
, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.1";
  src = /nix/store/gxn0kl2l6iyvffws48hbkcdsiw77nlfq-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    distributive hashable tagged template-haskell transformers
    transformers-compat unordered-containers
  ];
  homepage = "http://github.com/ekmett/semigroupoids";
  description = "Semigroupoids: Category sans id";
  license = lib.licenses.bsd2;
}
;
}
;
    statistics = {
  meta = {
    sha256 = "141s4yaci3jxaq8pgfs6mqiqc1krlgibr0ld0hh56d6c585jiyar";
    url = "https://hackage.haskell.org";
    ver = "0.16.2.1";
  };
  drv = { mkDerivation, aeson, async, base, binary, data-default-class
, deepseq, dense-linear-algebra, erf, ieee754, lib, math-functions
, mwc-random, parallel, primitive, QuickCheck, random, tasty
, tasty-expected-failure, tasty-hunit, tasty-quickcheck, vector
, vector-algorithms, vector-binary-instances, vector-th-unbox
}:
mkDerivation {
  pname = "statistics";
  version = "0.16.2.1";
  src = /nix/store/xpsrx7f07jjrs3pbrrqzq1641yg7xjx3-source;
  libraryHaskellDepends = [
    aeson async base binary data-default-class deepseq
    dense-linear-algebra math-functions mwc-random parallel primitive
    random vector vector-algorithms vector-binary-instances
    vector-th-unbox
  ];
  testHaskellDepends = [
    aeson base binary dense-linear-algebra erf ieee754 math-functions
    primitive QuickCheck tasty tasty-expected-failure tasty-hunit
    tasty-quickcheck vector vector-algorithms
  ];
  homepage = "https://github.com/haskell/statistics";
  description = "A library of statistical types, data, and functions";
  license = lib.licenses.bsd2;
}
;
}
;
    strict = {
  meta = {
    sha256 = "06y3ab0nsdbrkrxzc7hgy6cwxl72wcgqn52bs1vvi5lkp64v559y";
    url = "https://hackage.haskell.org";
    ver = "0.5.1";
  };
  drv = { mkDerivation, assoc, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, text, these, transformers
}:
mkDerivation {
  pname = "strict";
  version = "0.5.1";
  src = /nix/store/p7v6sdqgj45jfxfcyl5cg48b4sj6snki-source;
  libraryHaskellDepends = [
    assoc base binary bytestring deepseq ghc-prim hashable text these
    transformers
  ];
  homepage = "https://github.com/haskell-strict/strict";
  description = "Strict data types and String IO";
  license = lib.licenses.bsd3;
}
;
}
;
    tasty = {
  meta = {
    sha256 = "0x6khif6n0rzfgkvrbiagg1sj0lwmjfr6qarjnjwmb9ywdk7598b";
    url = "https://hackage.haskell.org";
    ver = "1.5.4";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.4";
  src = /nix/store/mk9c6p551r7vmw9l8cgqrc0k3phszvbi-source;
  libraryHaskellDepends = [
    ansi-terminal base containers optparse-applicative stm tagged
    transformers unix
  ];
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
}
;
}
;
    tasty-hedgehog = {
  meta = {
    sha256 = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
    url = "https://hackage.haskell.org";
    ver = "1.4.0.2";
  };
  drv = { mkDerivation, base, hedgehog, lib, tagged, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.4.0.2";
  src = /nix/store/b9mxq4fh65sif22q9a4g041jvp847cyc-source;
  libraryHaskellDepends = [ base hedgehog tagged tasty ];
  testHaskellDepends = [
    base hedgehog tasty tasty-expected-failure
  ];
  homepage = "https://github.com/qfpl/tasty-hedgehog";
  description = "Integration for tasty and hedgehog";
  license = lib.licenses.bsd3;
}
;
}
;
    text-iso8601 = {
  meta = {
    sha256 = "0lk8y0g5p2zamkgvxy7i5lqfpa4wnic9vg2bl87s801fniwdij3m";
    url = "https://hackage.haskell.org";
    ver = "0.1.1";
  };
  drv = { mkDerivation, attoparsec, attoparsec-iso8601, base
, integer-conversion, lib, QuickCheck, quickcheck-instances, tasty
, tasty-bench, tasty-hunit, tasty-quickcheck, text, time
, time-compat
}:
mkDerivation {
  pname = "text-iso8601";
  version = "0.1.1";
  src = /nix/store/si7h80rdb1dc7vhcgiqj34lwfbxaym4y-source;
  libraryHaskellDepends = [
    base integer-conversion text time time-compat
  ];
  testHaskellDepends = [
    base QuickCheck quickcheck-instances tasty tasty-hunit
    tasty-quickcheck text time-compat
  ];
  benchmarkHaskellDepends = [
    attoparsec attoparsec-iso8601 base tasty-bench text time-compat
  ];
  homepage = "https://github.com/haskell/aeson";
  description = "Converting time to and from ISO 8601 text";
  license = lib.licenses.bsd3;
}
;
}
;
    text-short = {
  meta = {
    sha256 = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
    url = "https://hackage.haskell.org";
    ver = "0.1.6";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "text-short";
  version = "0.1.6";
  src = /nix/store/szwhvms3jqw03gz4ydrwilgah3vshhh1-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq ghc-prim hashable template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring tasty tasty-hunit tasty-quickcheck
    template-haskell text
  ];
  description = "Memory-efficient representation of Unicode text strings";
  license = lib.licenses.bsd3;
}
;
}
;
    th-abstraction = {
  meta = {
    sha256 = "09wr7x9bpzyrys8id1mavk9wvqhh2smxdkfwi82kpcycm7a1z7sx";
    url = "https://hackage.haskell.org";
    ver = "0.7.1.0";
  };
  drv = { mkDerivation, base, containers, ghc-prim, lib, template-haskell
}:
mkDerivation {
  pname = "th-abstraction";
  version = "0.7.1.0";
  src = /nix/store/d2zwzbkknm40lfy26dkpyjspg8l99lv1-source;
  libraryHaskellDepends = [
    base containers ghc-prim template-haskell
  ];
  testHaskellDepends = [ base containers template-haskell ];
  homepage = "https://github.com/glguy/th-abstraction";
  description = "Nicer interface for reified information about data types";
  license = lib.licenses.isc;
}
;
}
;
    th-compat = {
  meta = {
    sha256 = "1zdj59i2id6mnxq798yjd46zwz83agqid76zkwaiighwv8yfckph";
    url = "https://hackage.haskell.org";
    ver = "0.1.6";
  };
  drv = { mkDerivation, base, hspec, hspec-discover, lib, mtl
, template-haskell
}:
mkDerivation {
  pname = "th-compat";
  version = "0.1.6";
  src = /nix/store/xaj1b3yqpiscq1fh4spdka4g4c2c3wk9-source;
  libraryHaskellDepends = [ base template-haskell ];
  testHaskellDepends = [ base hspec mtl template-haskell ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/haskell-compat/th-compat";
  description = "Backward- (and forward-)compatible Quote and Code types";
  license = lib.licenses.bsd3;
}
;
}
;
    these = {
  meta = {
    sha256 = "0jqchlmycfcvkff48shhkswansnzrw57q8945m483mrd59zpg27k";
    url = "https://hackage.haskell.org";
    ver = "1.2.1";
  };
  drv = { mkDerivation, assoc, base, binary, deepseq, hashable, lib }:
mkDerivation {
  pname = "these";
  version = "1.2.1";
  src = /nix/store/aaw05vz42pjyhry145973mssbqw1n5i9-source;
  libraryHaskellDepends = [ assoc base binary deepseq hashable ];
  homepage = "https://github.com/haskellari/these";
  description = "An either-or-both data type";
  license = lib.licenses.bsd3;
}
;
}
;
    time-compat = {
  meta = {
    sha256 = "0xnsjpcdjms1k72b7h51i37m7qkmlrx1pw4h866p23cj2gvkf717";
    url = "https://hackage.haskell.org";
    ver = "1.9.8";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, hashable, HUnit, lib
, QuickCheck, random, tagged, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, time
}:
mkDerivation {
  pname = "time-compat";
  version = "1.9.8";
  src = /nix/store/493f9iawqs55ahffd5vbhh6i03dpacqg-source;
  libraryHaskellDepends = [
    base base-orphans deepseq hashable template-haskell time
  ];
  testHaskellDepends = [
    base deepseq hashable HUnit QuickCheck random tagged tasty
    tasty-hunit tasty-quickcheck template-haskell time
  ];
  homepage = "https://github.com/haskellari/time-compat";
  description = "Compatibility package for time";
  license = lib.licenses.bsd3;
}
;
}
;
    uuid-types = {
  meta = {
    sha256 = "1i8cm1qyni59vb0q7hb36djskyhysbcm36cgsysarj6fp7hni1dz";
    url = "https://hackage.haskell.org";
    ver = "1.0.6";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, hashable, lib
, QuickCheck, random, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "uuid-types";
  version = "1.0.6";
  src = /nix/store/xadj82facc1d4rrbl22vvbrfzigsvfc8-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq hashable random template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck tasty tasty-hunit
    tasty-quickcheck template-haskell
  ];
  homepage = "https://github.com/haskell-hvr/uuid";
  description = "Type definitions for Universally Unique Identifiers";
  license = lib.licenses.bsd3;
}
;
}
;
    vector = {
  meta = {
    sha256 = "0mgc7ikhdgqwsj5skdxsf6v3a1iqkiiysqj94qnbg40ff8nbai4x";
    url = "https://hackage.haskell.org";
    ver = "0.13.2.0";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, doctest, lib
, primitive, QuickCheck, random, tasty, tasty-bench, tasty-hunit
, tasty-inspection-testing, tasty-quickcheck, template-haskell
, transformers, vector-stream
}:
mkDerivation {
  pname = "vector";
  version = "0.13.2.0";
  src = /nix/store/b8qdb5sk1v1vp84rjv25n82721pdgixh-source;
  libraryHaskellDepends = [
    base deepseq primitive random tasty vector-stream
  ];
  testHaskellDepends = [
    base base-orphans doctest primitive QuickCheck random tasty
    tasty-hunit tasty-inspection-testing tasty-quickcheck
    template-haskell transformers
  ];
  benchmarkHaskellDepends = [ base random tasty tasty-bench ];
  doHaddock = false;
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Arrays";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    vector-algorithms = {
  meta = {
    sha256 = "0924b5cif1fm861hl0jwysiv0w6szgpjrn1x90sfli4dvb32ys3c";
    url = "https://hackage.haskell.org";
    ver = "0.9.1.0";
  };
  drv = { mkDerivation, base, bitvec, bytestring, containers, lib
, mwc-random, primitive, QuickCheck, vector
}:
mkDerivation {
  pname = "vector-algorithms";
  version = "0.9.1.0";
  src = /nix/store/p3l2vq0h38l4hg8b0npcikvlqbigpdaa-source;
  libraryHaskellDepends = [
    base bitvec bytestring primitive vector
  ];
  testHaskellDepends = [
    base bytestring containers QuickCheck vector
  ];
  benchmarkHaskellDepends = [ base mwc-random vector ];
  homepage = "https://github.com/erikd/vector-algorithms/";
  description = "Efficient algorithms for vector arrays";
  license = lib.licenses.bsd3;
}
;
}
;
    vector-binary-instances = {
  meta = {
    sha256 = "0pmmr18l0bjgn5gzb1n7na1fhprnr4cy5q6975hllkk6lwkgmivg";
    url = "https://hackage.haskell.org";
    ver = "0.2.5.2";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, lib, tasty
, tasty-bench, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "vector-binary-instances";
  version = "0.2.5.2";
  src = /nix/store/snhkkp31yxqh5ycw5r0ndplwdgdf4vkp-source;
  libraryHaskellDepends = [ base binary vector ];
  testHaskellDepends = [ base binary tasty tasty-quickcheck vector ];
  benchmarkHaskellDepends = [
    base binary bytestring deepseq tasty-bench vector
  ];
  homepage = "https://github.com/bos/vector-binary-instances";
  description = "Instances of Data.Binary for vector";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    vector-stream = {
  meta = {
    sha256 = "08hp43wx8gvbak4dffkj76zcirnmfmk9csca87fjik5w61ci9dyp";
    url = "https://hackage.haskell.org";
    ver = "0.1.0.1";
  };
  drv = { mkDerivation, base, ghc-prim, lib }:
mkDerivation {
  pname = "vector-stream";
  version = "0.1.0.1";
  src = /nix/store/9h5w5lzcv5fd2is25nxgr4amahddf7h2-source;
  libraryHaskellDepends = [ base ghc-prim ];
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Streams";
  license = lib.licenses.bsd3;
}
;
}
;
    vector-th-unbox = {
  meta = {
    sha256 = "0agxmj1hprzmnz84b3vidrvhpk5wrxkljxgmlz1aaaxrp3284nqw";
    url = "https://hackage.haskell.org";
    ver = "0.2.2";
  };
  drv = { mkDerivation, base, data-default, lib, template-haskell, vector
}:
mkDerivation {
  pname = "vector-th-unbox";
  version = "0.2.2";
  src = /nix/store/gblghanf61k3yqd0gwcjrlpk7v7fhkj8-source;
  libraryHaskellDepends = [ base template-haskell vector ];
  testHaskellDepends = [ base data-default vector ];
  homepage = "https://github.com/tsurucapital/vector-th-unbox";
  description = "Deriver for Data.Vector.Unboxed using Template Haskell";
  license = lib.licenses.bsd3;
}
;
}
;
    witherable = {
  meta = {
    sha256 = "0xm77dqyfm0zh0xvnh1srwxrkn4sl7m126lqhbzc4q9f6lziwzdx";
    url = "https://hackage.haskell.org";
    ver = "0.5";
  };
  drv = { mkDerivation, base, base-orphans, containers, hashable
, indexed-traversable, indexed-traversable-instances, lib
, QuickCheck, quickcheck-instances, tasty, tasty-quickcheck
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "witherable";
  version = "0.5";
  src = /nix/store/gz5hm6n4glpkkrhb8n86y8xpqa8xakf8-source;
  libraryHaskellDepends = [
    base base-orphans containers hashable indexed-traversable
    indexed-traversable-instances transformers unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers hashable QuickCheck quickcheck-instances tasty
    tasty-quickcheck transformers unordered-containers vector
  ];
  homepage = "https://github.com/fumieval/witherable";
  description = "filterable traversable";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
  };
  lower = {
    Glob = {
  meta = {
    sha256 = "1v74ynmlz1qi8m5l7jkbyhjfmrjhklrzhjwh2lpfhrr285n1008l";
    url = "https://hackage.haskell.org";
    ver = "0.10.2";
  };
  drv = { mkDerivation, base, containers, directory, dlist, filepath, HUnit
, lib, QuickCheck, test-framework, test-framework-hunit
, test-framework-quickcheck2, transformers, transformers-compat
}:
mkDerivation {
  pname = "Glob";
  version = "0.10.2";
  src = /nix/store/qqbh8al28fby77yqyqqcaws8hgcr7h99-source;
  libraryHaskellDepends = [
    base containers directory dlist filepath transformers
    transformers-compat
  ];
  testHaskellDepends = [
    base containers directory dlist filepath HUnit QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2
    transformers transformers-compat
  ];
  homepage = "http://iki.fi/matti.niemenmaa/glob/";
  description = "Globbing library";
  license = lib.licenses.bsd3;
}
;
}
;
    OneTuple = {
  meta = {
    sha256 = "119jvqddcqk8j7c3mvrqsxp4xwy7n327ndi61c4r06bi4h3557aq";
    url = "https://hackage.haskell.org";
    ver = "0.4.2.1";
  };
  drv = { mkDerivation, base, foldable1-classes-compat, ghc-prim, hashable
, lib, template-haskell
}:
mkDerivation {
  pname = "OneTuple";
  version = "0.4.2.1";
  src = /nix/store/0m2dsjvl7655rlsc0x00z3f0r1rr46b4-source;
  libraryHaskellDepends = [ base ghc-prim template-haskell ];
  testHaskellDepends = [ base foldable1-classes-compat hashable ];
  description = "Singleton Tuple";
  license = lib.licenses.bsd3;
}
;
}
;
    Only = {
  meta = {
    sha256 = "1a8a5sapa8jpciglsv98snx2khkn9hplh8rn41p47j9796gxb5jw";
    url = "https://hackage.haskell.org";
    ver = "0.1";
  };
  drv = { mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "Only";
  version = "0.1";
  src = /nix/store/3hmhf0l37sp5gn3qcqa7vrzd7yfp8kxa-source;
  libraryHaskellDepends = [ base deepseq ];
  description = "The 1-tuple type or single-value \"collection\"";
  license = lib.licenses.bsd3;
}
;
}
;
    QuickCheck = {
  meta = {
    sha256 = "18451rdmih1jkrsrckdcix71zqihc4h2caic7qzizxjg4hqpapji";
    url = "https://hackage.haskell.org";
    ver = "2.14.3";
  };
  drv = { mkDerivation, base, containers, deepseq, lib, process, random
, splitmix, template-haskell, transformers
}:
mkDerivation {
  pname = "QuickCheck";
  version = "2.14.3";
  src = /nix/store/kh42dp9c3b6mjrf9cpskg33vgxfr598p-source;
  libraryHaskellDepends = [
    base containers deepseq random splitmix template-haskell
    transformers
  ];
  testHaskellDepends = [ base deepseq process ];
  homepage = "https://github.com/nick8325/quickcheck";
  description = "Automatic testing of Haskell programs";
  license = lib.licenses.bsd3;
}
;
}
;
    StateVar = {
  meta = {
    sha256 = "1grkv7sinn3wlk0xgwn4in5xxqmssrrfhp2hjxy9imhh8li40grf";
    url = "https://hackage.haskell.org";
    ver = "1.2.2";
  };
  drv = { mkDerivation, base, lib, stm, transformers }:
mkDerivation {
  pname = "StateVar";
  version = "1.2.2";
  src = /nix/store/ivmsjzc092g2051f0p7awq5ijzza7km8-source;
  libraryHaskellDepends = [ base stm transformers ];
  homepage = "https://github.com/haskell-opengl/StateVar";
  description = "State variables";
  license = lib.licenses.bsd3;
}
;
}
;
    aeson = {
  meta = {
    sha256 = "1f1f6h2r60ghz4p1ddi6wnq6z3i07j60sgm77hx2rvmncz4vizp0";
    url = "https://hackage.haskell.org";
    ver = "2.1.2.1";
  };
  drv = { mkDerivation, attoparsec, base, base-compat
, base-compat-batteries, base-orphans, base16-bytestring
, bytestring, containers, data-fix, deepseq, Diff, directory, dlist
, exceptions, filepath, generic-deriving, generically, ghc-prim
, hashable, indexed-traversable, integer-logarithms, lib, OneTuple
, primitive, QuickCheck, quickcheck-instances, scientific
, semialign, strict, tagged, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, template-haskell, text, text-short
, th-abstraction, these, time, time-compat, unordered-containers
, uuid-types, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.1.2.1";
  src = /nix/store/hdckfxcpamn3qv2a0xn9pfzz64k0fpvp-source;
  libraryHaskellDepends = [
    attoparsec base base-compat-batteries bytestring containers
    data-fix deepseq dlist exceptions generically ghc-prim hashable
    indexed-traversable OneTuple primitive QuickCheck scientific
    semialign strict tagged template-haskell text text-short
    th-abstraction these time time-compat unordered-containers
    uuid-types vector witherable
  ];
  testHaskellDepends = [
    attoparsec base base-compat base-orphans base16-bytestring
    bytestring containers data-fix Diff directory dlist filepath
    generic-deriving generically ghc-prim hashable indexed-traversable
    integer-logarithms OneTuple primitive QuickCheck
    quickcheck-instances scientific strict tagged tasty tasty-golden
    tasty-hunit tasty-quickcheck template-haskell text text-short these
    time time-compat unordered-containers uuid-types vector
  ];
  homepage = "https://github.com/haskell/aeson";
  description = "Fast JSON parsing and encoding";
  license = lib.licenses.bsd3;
}
;
}
;
    ansi-terminal = {
  meta = {
    sha256 = "0g7ycc2b67z8plqp7hva914yhwzjmvvhhf9mszlhj3kqxh6i732b";
    url = "https://hackage.haskell.org";
    ver = "0.11.5";
  };
  drv = { mkDerivation, ansi-terminal-types, base, colour, lib }:
mkDerivation {
  pname = "ansi-terminal";
  version = "0.11.5";
  src = /nix/store/alz2mx3prxb7bhg89b0hld8xqi1b22x9-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ ansi-terminal-types base colour ];
  homepage = "https://github.com/UnkindPartition/ansi-terminal";
  description = "Simple ANSI terminal support, with Windows compatibility";
  license = lib.licenses.bsd3;
}
;
}
;
    ansi-terminal-types = {
  meta = {
    sha256 = "1xyq225ff8r0ymrhmr5fj3zk3qw87dqiz3makjyabn07dbqj3chq";
    url = "https://hackage.haskell.org";
    ver = "0.11.5";
  };
  drv = { mkDerivation, base, colour, lib }:
mkDerivation {
  pname = "ansi-terminal-types";
  version = "0.11.5";
  src = /nix/store/dynmdsclkr324y9gb2zrnp8pl6h781mz-source;
  libraryHaskellDepends = [ base colour ];
  homepage = "https://github.com/UnkindPartition/ansi-terminal";
  description = "Types and functions used to represent SGR aspects";
  license = lib.licenses.bsd3;
}
;
}
;
    ansi-wl-pprint = {
  meta = {
    sha256 = "08akbbdra1sx36ff1la5k7rcxlz543i86qk4gyyxbxy636m9fhwv";
    url = "https://hackage.haskell.org";
    ver = "0.6.9";
  };
  drv = { mkDerivation, ansi-terminal, base, lib }:
mkDerivation {
  pname = "ansi-wl-pprint";
  version = "0.6.9";
  src = /nix/store/z4qb2zjir7qiqdv4fl79iys17ig6vl8g-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ ansi-terminal base ];
  homepage = "http://github.com/ekmett/ansi-wl-pprint";
  description = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
  license = lib.licenses.bsd3;
}
;
}
;
    assoc = {
  meta = {
    sha256 = "0v4j6bn73dm3xnpkfdx0dg7q4vypl4k31pg35vycfp8w00jv6b6q";
    url = "https://hackage.haskell.org";
    ver = "1.1.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "assoc";
  version = "1.1.1";
  src = /nix/store/zxndaprg8rmkrgyxsbwsc3bq5s3hqrbw-source;
  libraryHaskellDepends = [ base ];
  description = "swap and assoc: Symmetric and Semigroupy Bifunctors";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    async = {
  meta = {
    sha256 = "1731pcifiskq6g1b72p34phx85l65ax7mbjw11310b3zwzk0ldyn";
    url = "https://hackage.haskell.org";
    ver = "2.2.6";
  };
  drv = { mkDerivation, base, hashable, HUnit, lib, stm, test-framework
, test-framework-hunit, unordered-containers
}:
mkDerivation {
  pname = "async";
  version = "2.2.6";
  src = /nix/store/gqjb7z6xhgknsx70z3vqfndrrb5s0igk-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base hashable stm unordered-containers ];
  testHaskellDepends = [
    base HUnit stm test-framework test-framework-hunit
  ];
  homepage = "https://github.com/simonmar/async";
  description = "Run IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
;
}
;
    attoparsec = {
  meta = {
    sha256 = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
    url = "https://hackage.haskell.org";
    ver = "0.14.4";
  };
  drv = { mkDerivation, array, base, bytestring, case-insensitive
, containers, deepseq, directory, filepath, ghc-prim, http-types
, lib, parsec, QuickCheck, quickcheck-unicode, scientific, tasty
, tasty-bench, tasty-quickcheck, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "attoparsec";
  version = "0.14.4";
  src = /nix/store/cy9l5kw9c213v64k3q07lgxaga8yai9b-source;
  libraryHaskellDepends = [
    array base bytestring containers deepseq ghc-prim scientific text
    transformers
  ];
  testHaskellDepends = [
    array base bytestring deepseq QuickCheck quickcheck-unicode
    scientific tasty tasty-quickcheck text transformers vector
  ];
  benchmarkHaskellDepends = [
    array base bytestring case-insensitive containers deepseq directory
    filepath ghc-prim http-types parsec scientific tasty-bench text
    transformers unordered-containers vector
  ];
  doHaddock = false;
  homepage = "https://github.com/bgamari/attoparsec";
  description = "Fast combinator parsing for bytestrings and text";
  license = lib.licenses.bsd3;
}
;
}
;
    barbies = {
  meta = {
    sha256 = "14rqhblvmc4bylk1ry4y4hi47bkswp1slbgmamn6yj1dn1ng4awj";
    url = "https://hackage.haskell.org";
    ver = "2.0.5.0";
  };
  drv = { mkDerivation, base, distributive, lib, QuickCheck, tasty
, tasty-hunit, tasty-quickcheck, transformers
}:
mkDerivation {
  pname = "barbies";
  version = "2.0.5.0";
  src = /nix/store/as3b2wzfhkww7pqdsi9qma7ps0mb5b1j-source;
  libraryHaskellDepends = [ base distributive transformers ];
  testHaskellDepends = [
    base distributive QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  homepage = "https://github.com/jcpetruzza/barbies#readme";
  description = "Classes for working with types that can change clothes";
  license = lib.licenses.bsd3;
}
;
}
;
    base-compat = {
  meta = {
    sha256 = "0vnns2imggv0b9gbbd9k0p8hdwlimka50gqbvknwkwbnv3kil7lb";
    url = "https://hackage.haskell.org";
    ver = "0.12.3";
  };
  drv = { mkDerivation, base, ghc-prim, lib, unix }:
mkDerivation {
  pname = "base-compat";
  version = "0.12.3";
  src = /nix/store/27jljyhpn0kr44nklqxq2si7asn1hn8v-source;
  libraryHaskellDepends = [ base ghc-prim unix ];
  description = "A compatibility layer for base";
  license = lib.licenses.mit;
}
;
}
;
    base-compat-batteries = {
  meta = {
    sha256 = "0jg1wki5qbghjd5ra23ldc69jal9jjwrwp6wz8gg4gcrjlxbwg7m";
    url = "https://hackage.haskell.org";
    ver = "0.12.3";
  };
  drv = { mkDerivation, base, base-compat, ghc-prim, hspec, hspec-discover
, lib, QuickCheck
}:
mkDerivation {
  pname = "base-compat-batteries";
  version = "0.12.3";
  src = /nix/store/6mpq0s7c8bpjiw0ihk5y2lslvqgjggqv-source;
  libraryHaskellDepends = [ base base-compat ghc-prim ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  description = "base-compat with extra batteries";
  license = lib.licenses.mit;
}
;
}
;
    bifunctors = {
  meta = {
    sha256 = "0hvfzxbj181y61k14fvs5q2vjp1s7s1fay15q6kzvh1b38wg7y0l";
    url = "https://hackage.haskell.org";
    ver = "5.6.3";
  };
  drv = { mkDerivation, assoc, base, comonad, containers
, foldable1-classes-compat, hspec, hspec-discover, lib, QuickCheck
, tagged, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.6.3";
  src = /nix/store/8s8g4p0qgm1k1jfiz614kz13r13074gy-source;
  libraryHaskellDepends = [
    assoc base comonad containers foldable1-classes-compat tagged
    template-haskell th-abstraction
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = lib.licenses.bsd3;
}
;
}
;
    binary-orphans = {
  meta = {
    sha256 = "0wazfiyyqagi6h9fmly67z7ji6rc08ynd57spa3g9s8wl6dpy0px";
    url = "https://hackage.haskell.org";
    ver = "1.0.5.1";
  };
  drv = { mkDerivation, base, binary, lib, QuickCheck, quickcheck-instances
, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "binary-orphans";
  version = "1.0.5.1";
  src = /nix/store/05kml6kabfq4k8wp79ydx5w8hny28gym-source;
  libraryHaskellDepends = [ base binary ];
  testHaskellDepends = [
    base binary QuickCheck quickcheck-instances tasty tasty-quickcheck
  ];
  description = "Compatibility package for binary; provides instances";
  license = lib.licenses.bsd3;
}
;
}
;
    bitvec = {
  meta = {
    sha256 = "15rc25nlf8s6kxw7wfplma6znpc6sh2vmginyb5qdyhjidyzglpg";
    url = "https://hackage.haskell.org";
    ver = "1.1.6.0";
  };
  drv = { mkDerivation, base, bytestring, containers, deepseq, ghc-bignum
, lib, primitive, quickcheck-classes, quickcheck-classes-base
, random, tasty, tasty-bench, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "bitvec";
  version = "1.1.6.0";
  src = /nix/store/zx4x6i04an0x4a9vwkkiv2q9iy35y6ix-source;
  libraryHaskellDepends = [
    base bytestring deepseq ghc-bignum primitive vector
  ];
  testHaskellDepends = [
    base ghc-bignum primitive quickcheck-classes
    quickcheck-classes-base tasty tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [
    base containers ghc-bignum random tasty tasty-bench vector
  ];
  homepage = "https://github.com/Bodigrim/bitvec";
  description = "Space-efficient bit vectors";
  license = lib.licenses.bsd3;
}
;
}
;
    cassava = {
  meta = {
    sha256 = "0mkyhrwzqzf7c0hpzgsjgyplhgycdk58a80rdvzgpc0nhb9qg8mk";
    url = "https://hackage.haskell.org";
    ver = "0.5.4.1";
  };
  drv = { mkDerivation, array, attoparsec, base, bytestring, containers
, deepseq, hashable, HUnit, lib, Only, QuickCheck
, quickcheck-instances, scientific, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
, text-short, unordered-containers, vector
}:
mkDerivation {
  pname = "cassava";
  version = "0.5.4.1";
  src = /nix/store/nxvcvyv3a48qh87iry4r00w9il0p9ljr-source;
  configureFlags = [ "-f-bytestring--lt-0_10_4" ];
  libraryHaskellDepends = [
    array attoparsec base bytestring containers deepseq hashable Only
    scientific text text-short unordered-containers vector
  ];
  testHaskellDepends = [
    base bytestring HUnit QuickCheck quickcheck-instances scientific
    test-framework test-framework-hunit test-framework-quickcheck2 text
    unordered-containers vector
  ];
  homepage = "https://github.com/haskell-hvr/cassava";
  description = "A CSV parsing and encoding library";
  license = lib.licenses.bsd3;
}
;
}
;
    clock = {
  meta = {
    sha256 = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
    url = "https://hackage.haskell.org";
    ver = "0.8.4";
  };
  drv = { mkDerivation, base, criterion, lib, tasty, tasty-quickcheck }:
mkDerivation {
  pname = "clock";
  version = "0.8.4";
  src = /nix/store/rbsi64yfx248l6pmqqvfviaj5alfpfhw-source;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base tasty tasty-quickcheck ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/corsis/clock";
  description = "High-resolution clock functions: monotonic, realtime, cputime";
  license = lib.licenses.bsd3;
}
;
}
;
    code-page = {
  meta = {
    sha256 = "1g6adshrqhn21b61vxhjzjzxvw7m1ildrq4jaj02wmlg6p6yvcwn";
    url = "https://hackage.haskell.org";
    ver = "0.2.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "code-page";
  version = "0.2.1";
  src = /nix/store/yj8467zy0bv5lx7kfwza4vasvg25i4l8-source;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/RyanGlScott/code-page";
  description = "Windows code page library for Haskell";
  license = lib.licenses.bsd3;
}
;
}
;
    comonad = {
  meta = {
    sha256 = "0534iqqc635c8h02h1r3pz90gf4mfqpx5zkv1wqm01vpybmkmpzw";
    url = "https://hackage.haskell.org";
    ver = "5.0.10";
  };
  drv = { mkDerivation, base, containers, distributive, indexed-traversable
, lib, tagged, transformers
}:
mkDerivation {
  pname = "comonad";
  version = "5.0.10";
  src = /nix/store/5l9vbbk6fqzghy6gv2ilmhdwihy7kq22-source;
  libraryHaskellDepends = [
    base containers distributive indexed-traversable tagged
    transformers
  ];
  homepage = "http://github.com/ekmett/comonad/";
  description = "Comonads";
  license = lib.licenses.bsd3;
}
;
}
;
    concurrent-output = {
  meta = {
    sha256 = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
    url = "https://hackage.haskell.org";
    ver = "1.10.21";
  };
  drv = { mkDerivation, ansi-terminal, async, base, directory, exceptions
, lib, process, stm, terminal-size, text, transformers, unix
}:
mkDerivation {
  pname = "concurrent-output";
  version = "1.10.21";
  src = /nix/store/kwz3gmjbrzcw4iccsx2d0cyn85klblqy-source;
  libraryHaskellDepends = [
    ansi-terminal async base directory exceptions process stm
    terminal-size text transformers unix
  ];
  description = "Ungarble output from several threads or commands";
  license = lib.licenses.bsd2;
}
;
}
;
    constraints = {
  meta = {
    sha256 = "00cjd15kn30qgq541s0g3sd2lnvrdswx3bkafk0bmrg9b0kdb6hg";
    url = "https://hackage.haskell.org";
    ver = "0.14.4";
  };
  drv = { mkDerivation, base, binary, boring, deepseq, hashable, hspec
, hspec-discover, lib, mtl, transformers
}:
mkDerivation {
  pname = "constraints";
  version = "0.14.4";
  src = /nix/store/2k6n5ivkla205m35i77cdwf4dn9vdr2x-source;
  libraryHaskellDepends = [
    base binary boring deepseq hashable mtl transformers
  ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/constraints/";
  description = "Constraint manipulation";
  license = lib.licensesSpdx."BSD-2-Clause";
}
;
}
;
    contravariant = {
  meta = {
    sha256 = "02pdrv9f62pv096npxzxkarghyn7kqxvd8fwkz4vyhz4hffq3r15";
    url = "https://hackage.haskell.org";
    ver = "1.5.6";
  };
  drv = { mkDerivation, base, lib, StateVar, transformers }:
mkDerivation {
  pname = "contravariant";
  version = "1.5.6";
  src = /nix/store/h6rdybxcmxwcvkr20xhk1ld6rbyz5qi0-source;
  libraryHaskellDepends = [ base StateVar transformers ];
  homepage = "http://github.com/ekmett/contravariant/";
  description = "Contravariant functors";
  license = lib.licenses.bsd3;
}
;
}
;
    criterion = {
  meta = {
    sha256 = "15dwck1lpx281vx3jgdpv9hg0m49anw0wwf28zz7pa8wkhc87wg3";
    url = "https://hackage.haskell.org";
    ver = "1.5.13.0";
  };
  drv = { mkDerivation, aeson, ansi-wl-pprint, base, base-compat
, base-compat-batteries, binary, binary-orphans, bytestring
, cassava, code-page, containers, criterion-measurement, deepseq
, directory, exceptions, filepath, Glob, HUnit, js-chart, lib
, microstache, mtl, mwc-random, optparse-applicative, parsec
, QuickCheck, statistics, tasty, tasty-hunit, tasty-quickcheck
, text, time, transformers, transformers-compat, vector
, vector-algorithms
}:
mkDerivation {
  pname = "criterion";
  version = "1.5.13.0";
  src = /nix/store/iyf4fcmiixy3d38s58qpx32dls8vhdz1-source;
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson ansi-wl-pprint base base-compat-batteries binary
    binary-orphans bytestring cassava code-page containers
    criterion-measurement deepseq directory exceptions filepath Glob
    js-chart microstache mtl mwc-random optparse-applicative parsec
    statistics text time transformers transformers-compat vector
    vector-algorithms
  ];
  executableHaskellDepends = [
    base base-compat-batteries optparse-applicative
  ];
  testHaskellDepends = [
    aeson base base-compat base-compat-batteries bytestring deepseq
    directory HUnit QuickCheck statistics tasty tasty-hunit
    tasty-quickcheck vector
  ];
  homepage = "http://www.serpentine.com/criterion";
  description = "Robust, reliable performance measurement and analysis";
  license = lib.licenses.bsd3;
  mainProgram = "criterion-report";
}
;
}
;
    criterion-measurement = {
  meta = {
    sha256 = "086f7bkxln2xfx807rp0in1a9ac7amblwd43gbgn1r0g02w28j9f";
    url = "https://hackage.haskell.org";
    ver = "0.1.4.0";
  };
  drv = { mkDerivation, aeson, base, base-compat, binary, containers
, deepseq, lib, vector
}:
mkDerivation {
  pname = "criterion-measurement";
  version = "0.1.4.0";
  src = /nix/store/220mlnrhhswf31h4nsvhm5djg0rpil8i-source;
  libraryHaskellDepends = [
    aeson base base-compat binary containers deepseq vector
  ];
  homepage = "https://github.com/haskell/criterion";
  description = "Criterion measurement functionality and associated types";
  license = lib.licenses.bsd3;
}
;
}
;
    data-default-class = {
  meta = {
    sha256 = "0msqv0riwngs5b3vcdrpakhm6m1nllhgyrv58wilh0w4iikclvwm";
    url = "https://hackage.haskell.org";
    ver = "0.2.0.0";
  };
  drv = { mkDerivation, data-default, lib }:
mkDerivation {
  pname = "data-default-class";
  version = "0.2.0.0";
  src = /nix/store/2n0ldlb6pmskahzx9a0y918bv9l86qj0-source;
  libraryHaskellDepends = [ data-default ];
  description = "A class for types with a default value (compatibility shim)";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    data-fix = {
  meta = {
    sha256 = "0x8r2r8gmdvsclaszg90zn7gla6s8r6salbvgfsp0rscdjzj01ry";
    url = "https://hackage.haskell.org";
    ver = "0.3.4";
  };
  drv = { mkDerivation, base, deepseq, hashable, lib }:
mkDerivation {
  pname = "data-fix";
  version = "0.3.4";
  src = /nix/store/rk6gaw2jpjnd6hqhfwd1kr7c0pb5p370-source;
  libraryHaskellDepends = [ base deepseq hashable ];
  homepage = "https://github.com/spell-music/data-fix";
  description = "Fixpoint data types";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    dense-linear-algebra = {
  meta = {
    sha256 = "1xyyixkj0pxy4lxsk08kpwff25g5cqskn1l3jv3spnjxr5q1zhxd";
    url = "https://hackage.haskell.org";
    ver = "0.1.0.0";
  };
  drv = { mkDerivation, base, deepseq, hspec, lib, math-functions
, primitive, QuickCheck, vector, vector-algorithms
, vector-binary-instances, vector-th-unbox
}:
mkDerivation {
  pname = "dense-linear-algebra";
  version = "0.1.0.0";
  src = /nix/store/sak2vv2sbmkkv6bg355zasgaxdcwpn6h-source;
  libraryHaskellDepends = [
    base deepseq math-functions primitive vector vector-algorithms
    vector-binary-instances vector-th-unbox
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  description = "Simple and incomplete pure haskell implementation of linear algebra";
  license = lib.licenses.bsd2;
}
;
}
;
    dlist = {
  meta = {
    sha256 = "1lhckd8srlbjh17krqx0xkp10r9ipwc9lhlwrzxihkdwzsk0as0g";
    url = "https://hackage.haskell.org";
    ver = "1.0";
  };
  drv = { mkDerivation, base, deepseq, lib, QuickCheck }:
mkDerivation {
  pname = "dlist";
  version = "1.0";
  src = /nix/store/ylz0g4nxsgp7zzcb86xsm9k3m17cxfzx-source;
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/spl/dlist";
  description = "Difference lists";
  license = lib.licenses.bsd3;
}
;
}
;
    foldable1-classes-compat = {
  meta = {
    sha256 = "0blfwkx9wbmzbli46y1wy5dvw57rmkskc3xbak5damw23wnggbl4";
    url = "https://hackage.haskell.org";
    ver = "0.1.3";
  };
  drv = { mkDerivation, base, containers, deepseq, ghc-prim, lib
, QuickCheck, quickcheck-instances, tagged, tasty, tasty-bench
, tasty-quickcheck, transformers
}:
mkDerivation {
  pname = "foldable1-classes-compat";
  version = "0.1.3";
  src = /nix/store/ag8cqbgpx9k7xbpcpkh4jhp5w80xp7b9-source;
  libraryHaskellDepends = [
    base containers ghc-prim tagged transformers
  ];
  testHaskellDepends = [
    base containers QuickCheck quickcheck-instances tasty
    tasty-quickcheck transformers
  ];
  benchmarkHaskellDepends = [
    base containers deepseq tasty-bench transformers
  ];
  homepage = "https://github.com/haskell-compat/foldable1-classes-compat";
  description = "Compatibility package for the Foldable1 and Bifoldable1 type classes";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    generically = {
  meta = {
    sha256 = "1658df4jbhzgpsqqgxp71bgry7ak5q0bjlrw6x551g54vvcydbxz";
    url = "https://hackage.haskell.org";
    ver = "0.1.1";
  };
  drv = { mkDerivation, base, base-orphans, lib }:
mkDerivation {
  pname = "generically";
  version = "0.1.1";
  src = /nix/store/gssaqln6inz5bjna79kw4qn39aj1lb6l-source;
  libraryHaskellDepends = [ base base-orphans ];
  description = "Generically newtype to use with DerivingVia";
  license = lib.licenses.bsd3;
}
;
}
;
    hashable = {
  meta = {
    sha256 = "0a8jcfmak3b130x5xim4d6qsqmfp8779wvq5va9irncn6827ihzi";
    url = "https://hackage.haskell.org";
    ver = "1.4.4.0";
  };
  drv = { mkDerivation, base, bytestring, containers, deepseq, filepath
, ghc-bignum, ghc-prim, HUnit, lib, os-string, QuickCheck, random
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, unix
}:
mkDerivation {
  pname = "hashable";
  version = "1.4.4.0";
  src = /nix/store/84yi2sv3xcy5xkb55sqjrgyq2cgabiml-source;
  libraryHaskellDepends = [
    base bytestring containers deepseq filepath ghc-bignum ghc-prim
    os-string text
  ];
  testHaskellDepends = [
    base bytestring filepath ghc-prim HUnit os-string QuickCheck random
    test-framework test-framework-hunit test-framework-quickcheck2 text
    unix
  ];
  homepage = "http://github.com/haskell-unordered-containers/hashable";
  description = "A class for types that can be converted to a hash value";
  license = lib.licenses.bsd3;
}
;
}
;
    hedgehog = {
  meta = {
    sha256 = "0zp9al4d4h3vf2h7cqf6zmvzpmjr7w69kcp7fmw97m9c7h7ggniv";
    url = "https://hackage.haskell.org";
    ver = "1.1.2";
  };
  drv = { mkDerivation, ansi-terminal, async, barbies, base, bytestring
, concurrent-output, containers, deepseq, directory, erf
, exceptions, lib, lifted-async, mmorph, monad-control, mtl
, pretty-show, primitive, random, resourcet, stm, template-haskell
, text, time, transformers, transformers-base, wl-pprint-annotated
}:
mkDerivation {
  pname = "hedgehog";
  version = "1.1.2";
  src = /nix/store/ygzv2yabs8dpng794g40xw431hvr34p4-source;
  libraryHaskellDepends = [
    ansi-terminal async barbies base bytestring concurrent-output
    containers deepseq directory erf exceptions lifted-async mmorph
    monad-control mtl pretty-show primitive random resourcet stm
    template-haskell text time transformers transformers-base
    wl-pprint-annotated
  ];
  testHaskellDepends = [
    base containers mmorph mtl pretty-show text transformers
  ];
  homepage = "https://hedgehog.qa";
  description = "Release with confidence";
  license = lib.licenses.bsd3;
}
;
}
;
    hsc2hs = {
  meta = {
    sha256 = "0wdg17kicnp6qbgynha216vihx7nnsglvhn5c089dqpa14hg35zw";
    url = "https://hackage.haskell.org";
    ver = "0.68.10";
  };
  drv = { mkDerivation, base, containers, directory, filepath, HUnit, lib
, process, test-framework, test-framework-hunit
}:
mkDerivation {
  pname = "hsc2hs";
  version = "0.68.10";
  src = /nix/store/14zlpg12331kakcpz0pn3f05xyg8ql8l-source;
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = true;
  executableHaskellDepends = [
    base containers directory filepath process
  ];
  testHaskellDepends = [
    base HUnit test-framework test-framework-hunit
  ];
  description = "A preprocessor that helps with writing Haskell bindings to C code";
  license = lib.licenses.bsd3;
  mainProgram = "hsc2hs";
}
;
}
;
    incipit-base = {
  meta = {
    sha256 = "02fdppamn00m94xqi4zhm6sl1ndg6lhn24m74w24pq84h44mynl6";
    url = "https://hackage.haskell.org";
    ver = "0.5.0.0";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.5.0.0";
  src = /nix/store/yldscjmkq00j24nprzf6h950v7n33hp1-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = lib.licensesSpdx."BSD-2-Clause-Patent";
}
;
}
;
    indexed-traversable = {
  meta = {
    sha256 = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
    url = "https://hackage.haskell.org";
    ver = "0.1.4";
  };
  drv = { mkDerivation, array, base, containers, foldable1-classes-compat
, lib, transformers
}:
mkDerivation {
  pname = "indexed-traversable";
  version = "0.1.4";
  src = /nix/store/ng2979ljz7gbx6d7ar1qj6v5h2vig11h-source;
  libraryHaskellDepends = [
    array base containers foldable1-classes-compat transformers
  ];
  description = "FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    indexed-traversable-instances = {
  meta = {
    sha256 = "1issj9yfpxnshm6k7xq3wmmgrhn87cb0jalp0d1ls3zqx0qjrr03";
    url = "https://hackage.haskell.org";
    ver = "0.1.2.1";
  };
  drv = { mkDerivation, base, containers, indexed-traversable, lib
, OneTuple, QuickCheck, quickcheck-instances, tagged, tasty
, tasty-quickcheck, unordered-containers, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.2.1";
  src = /nix/store/4fg6lbfn2wpy1lfqwyvhm70r92n5k437-source;
  libraryHaskellDepends = [
    base indexed-traversable OneTuple tagged unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers indexed-traversable OneTuple QuickCheck
    quickcheck-instances tasty tasty-quickcheck unordered-containers
    vector
  ];
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    integer-logarithms = {
  meta = {
    sha256 = "0wy204yf3axnc5hnsj22d3l69sbgv05dkll7s7nhkv5hik2k0mvx";
    url = "https://hackage.haskell.org";
    ver = "1.0.5";
  };
  drv = { mkDerivation, array, base, lib, QuickCheck, smallcheck, tasty
, tasty-quickcheck, tasty-smallcheck
}:
mkDerivation {
  pname = "integer-logarithms";
  version = "1.0.5";
  src = /nix/store/l0855sw1s93mylg281hdlgv3y6bj3prp-source;
  libraryHaskellDepends = [ array base ];
  testHaskellDepends = [
    base QuickCheck smallcheck tasty tasty-quickcheck tasty-smallcheck
  ];
  homepage = "https://github.com/haskellari/integer-logarithms";
  description = "Integer logarithms";
  license = lib.licenses.mit;
}
;
}
;
    js-chart = {
  meta = {
    sha256 = "06gp1z4aa1bcn954cingac25vv8gc22km28d0glcp14a1bmxjany";
    url = "https://hackage.haskell.org";
    ver = "2.9.4.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "js-chart";
  version = "2.9.4.1";
  src = /nix/store/dz7k1i3sy8hx94kw7rkcpr1czchrv3i4-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/jonascarpay/js-chart#readme";
  description = "Obtain minified chart.js code";
  license = lib.licenses.mit;
}
;
}
;
    lifted-async = {
  meta = {
    sha256 = "0cgzs8sfr3l7ah5nnscpp50v5mmvc4hqf02zdi4h344dbbha10fy";
    url = "https://hackage.haskell.org";
    ver = "0.10.2.7";
  };
  drv = { mkDerivation, async, base, constraints, deepseq, HUnit, lib
, lifted-base, monad-control, mtl, tasty, tasty-bench
, tasty-expected-failure, tasty-hunit, tasty-th, transformers-base
}:
mkDerivation {
  pname = "lifted-async";
  version = "0.10.2.7";
  src = /nix/store/7fr6j14aj5sb57yg621rc9vysc7d1qcz-source;
  libraryHaskellDepends = [
    async base constraints lifted-base monad-control transformers-base
  ];
  testHaskellDepends = [
    async base HUnit lifted-base monad-control mtl tasty
    tasty-expected-failure tasty-hunit tasty-th
  ];
  benchmarkHaskellDepends = [ async base deepseq tasty-bench ];
  homepage = "https://github.com/maoe/lifted-async";
  description = "Run lifted IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
;
}
;
    math-functions = {
  meta = {
    sha256 = "01mi15cb6wqlizg3vl7x1a543f3adppmffwq65y8033y69hccv6y";
    url = "https://hackage.haskell.org";
    ver = "0.3.4.4";
  };
  drv = { mkDerivation, base, data-default-class, deepseq, erf, lib
, primitive, QuickCheck, random, tasty, tasty-bench, tasty-hunit
, tasty-quickcheck, vector, vector-th-unbox
}:
mkDerivation {
  pname = "math-functions";
  version = "0.3.4.4";
  src = /nix/store/nr1al4kzqbkc9yc33ji9gcqz7ay5impj-source;
  libraryHaskellDepends = [
    base data-default-class deepseq primitive vector
  ];
  testHaskellDepends = [
    base data-default-class deepseq erf primitive QuickCheck tasty
    tasty-hunit tasty-quickcheck vector vector-th-unbox
  ];
  benchmarkHaskellDepends = [
    base data-default-class random tasty-bench vector
  ];
  homepage = "https://github.com/haskell/math-functions";
  description = "Collection of tools for numeric computations";
  license = lib.licenses.bsd2;
}
;
}
;
    microstache = {
  meta = {
    sha256 = "1xsnmlnarm7xxx55sg9pr6fcwffy4r8k2lhpzdxs8ixqpcwpvika";
    url = "https://hackage.haskell.org";
    ver = "1.0.2.3";
  };
  drv = { mkDerivation, aeson, base, base-orphans, bytestring, containers
, deepseq, directory, filepath, lib, parsec, tasty, tasty-hunit
, text, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "microstache";
  version = "1.0.2.3";
  src = /nix/store/9kl7aabva8b3gafrcpznl2dy56lpg7cg-source;
  libraryHaskellDepends = [
    aeson base containers deepseq directory filepath parsec text
    transformers unordered-containers vector
  ];
  testHaskellDepends = [
    aeson base base-orphans bytestring containers parsec tasty
    tasty-hunit text
  ];
  homepage = "https://github.com/haskellari/microstache";
  description = "Mustache templates for Haskell";
  license = lib.licenses.bsd3;
}
;
}
;
    mwc-random = {
  meta = {
    sha256 = "03fj97z3qjbz11s2fl9x2i3fkna0kj19riglh4sdyv233ywr72yk";
    url = "https://hackage.haskell.org";
    ver = "0.15.3.0";
  };
  drv = { mkDerivation, base, bytestring, doctest, lib, math-functions
, mersenne-random, mtl, primitive, QuickCheck, random, tasty
, tasty-bench, tasty-hunit, tasty-quickcheck, time, vector
}:
mkDerivation {
  pname = "mwc-random";
  version = "0.15.3.0";
  src = /nix/store/dd4jaxmd7h6cw2nczx1hc7mpb4p63m6k-source;
  libraryHaskellDepends = [
    base math-functions primitive random time vector
  ];
  testHaskellDepends = [
    base bytestring doctest math-functions mtl primitive QuickCheck
    random tasty tasty-hunit tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [
    base mersenne-random random tasty tasty-bench vector
  ];
  doCheck = false;
  homepage = "https://github.com/haskell/mwc-random";
  description = "Fast, high quality pseudo random number generation";
  license = lib.licensesSpdx."BSD-2-Clause";
}
;
}
;
    optparse-applicative = {
  meta = {
    sha256 = "0dydzzywb9laqp9bk846b8m2g7nbqmc733lrqsfmc9khnfhlk4fp";
    url = "https://hackage.haskell.org";
    ver = "0.17.1.0";
  };
  drv = { mkDerivation, ansi-wl-pprint, base, lib, process, QuickCheck
, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.17.1.0";
  src = /nix/store/hvlh67wppxy64vxr970rwm2a4byx7q55-source;
  libraryHaskellDepends = [
    ansi-wl-pprint base process transformers transformers-compat
  ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = lib.licenses.bsd3;
}
;
}
;
    os-string = {
  meta = {
    sha256 = "1i3qmgqa2wyri8fyyhw2z6jfwrapd5x41gr29dmcn6ikfixaf9z5";
    url = "https://hackage.haskell.org";
    ver = "2.0.8";
  };
  drv = { mkDerivation, base, bytestring, deepseq, exceptions, lib
, QuickCheck, quickcheck-classes-base, random, tasty-bench
, template-haskell
}:
mkDerivation {
  pname = "os-string";
  version = "2.0.8";
  src = /nix/store/lqqw5l8q3bidjz0bkk7si12x22lphjw0-source;
  libraryHaskellDepends = [
    base bytestring deepseq exceptions template-haskell
  ];
  testHaskellDepends = [
    base bytestring deepseq QuickCheck quickcheck-classes-base
  ];
  benchmarkHaskellDepends = [
    base bytestring deepseq random tasty-bench
  ];
  homepage = "https://github.com/haskell/os-string/blob/master/README.md";
  description = "Library for manipulating Operating system strings";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    parallel = {
  meta = {
    sha256 = "1pcaz12k48m5wcnl2vifkxg8miadridfzbn2l6a0mhfgnwjwk6pd";
    url = "https://hackage.haskell.org";
    ver = "3.3.0.0";
  };
  drv = { mkDerivation, array, base, containers, deepseq, lib }:
mkDerivation {
  pname = "parallel";
  version = "3.3.0.0";
  src = /nix/store/k3i91k58y4jj6ad9nf1ivi5jqzm31w1p-source;
  libraryHaskellDepends = [ array base containers deepseq ];
  description = "Parallel programming library";
  license = lib.licenses.bsd3;
}
;
}
;
    parsec = {
  meta = {
    sha256 = "0yyg0hppwi86a0iqcca3x76f6f1j1bm3pf3gms6pcc7ayml7mvhb";
    url = "https://hackage.haskell.org";
    ver = "3.1.15.1";
  };
  drv = { mkDerivation, base, bytestring, lib, mtl, tasty, tasty-hunit
, text
}:
mkDerivation {
  pname = "parsec";
  version = "3.1.15.1";
  src = /nix/store/08dr3jlbmvnmrpfbdiqlsyf1spgx3wi6-source;
  libraryHaskellDepends = [ base bytestring mtl text ];
  testHaskellDepends = [ base mtl tasty tasty-hunit ];
  homepage = "https://github.com/haskell/parsec";
  description = "Monadic parser combinators";
  license = lib.licenses.bsd2;
}
;
}
;
    primitive = {
  meta = {
    sha256 = "0n7r8al9wgz4r7jzizapn1dbnkqxwx2c4lqkgfm5q5bxj8fl7g1c";
    url = "https://hackage.haskell.org";
    ver = "0.7.4.0";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, ghc-prim, lib
, QuickCheck, quickcheck-classes-base, tagged, tasty, tasty-bench
, tasty-quickcheck, template-haskell, transformers
, transformers-compat
}:
mkDerivation {
  pname = "primitive";
  version = "0.7.4.0";
  src = /nix/store/n8mj8jw45a66zwlskiky68hgd81jm3xf-source;
  libraryHaskellDepends = [
    base deepseq template-haskell transformers
  ];
  testHaskellDepends = [
    base base-orphans ghc-prim QuickCheck quickcheck-classes-base
    tagged tasty tasty-quickcheck transformers transformers-compat
  ];
  benchmarkHaskellDepends = [
    base deepseq tasty-bench transformers
  ];
  homepage = "https://github.com/haskell/primitive";
  description = "Primitive memory-related operations";
  license = lib.licenses.bsd3;
}
;
}
;
    resourcet = {
  meta = {
    sha256 = "0k96r6mx6zf0nr5y7xjzyhizx80svjfa3a47hcyys10y08rgqvln";
    url = "https://hackage.haskell.org";
    ver = "1.2.6";
  };
  drv = { mkDerivation, base, containers, exceptions, hspec, lib, mtl
, primitive, transformers, unliftio-core
}:
mkDerivation {
  pname = "resourcet";
  version = "1.2.6";
  src = /nix/store/24mb99pw0jwp7smm9lwwvacnkccpr7pd-source;
  libraryHaskellDepends = [
    base containers exceptions mtl primitive transformers unliftio-core
  ];
  testHaskellDepends = [ base exceptions hspec transformers ];
  homepage = "http://github.com/snoyberg/conduit";
  description = "Deterministic allocation and freeing of scarce resources";
  license = lib.licenses.bsd3;
}
;
}
;
    scientific = {
  meta = {
    sha256 = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
    url = "https://hackage.haskell.org";
    ver = "0.3.7.0";
  };
  drv = { mkDerivation, base, binary, bytestring, containers, criterion
, deepseq, hashable, integer-logarithms, lib, primitive, QuickCheck
, smallcheck, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck, template-haskell, text
}:
mkDerivation {
  pname = "scientific";
  version = "0.3.7.0";
  src = /nix/store/w1dja7k810rw0zjrx9r91il6im2gq4iv-source;
  libraryHaskellDepends = [
    base binary bytestring containers deepseq hashable
    integer-logarithms primitive template-haskell text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck smallcheck tasty tasty-hunit
    tasty-quickcheck tasty-smallcheck text
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/basvandijk/scientific";
  description = "Numbers represented using scientific notation";
  license = lib.licenses.bsd3;
}
;
}
;
    semialign = {
  meta = {
    sha256 = "17sfq3kzzdh28vin3kxw6l73jnrawf45cb4rhkcvajhsa9wkwsgv";
    url = "https://hackage.haskell.org";
    ver = "1.3.1.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.3.1.1";
  src = /nix/store/gsd0czq9iycmnncqf6h5p1p0qk1ma57m-source;
  libraryHaskellDepends = [
    base containers hashable indexed-traversable
    indexed-traversable-instances semigroupoids tagged these
    unordered-containers vector
  ];
  homepage = "https://github.com/haskellari/these";
  description = "Align and Zip type-classes from the common Semialign ancestor";
  license = lib.licenses.bsd3;
}
;
}
;
    semigroupoids = {
  meta = {
    sha256 = "0nc2c573inxnp4nz3pbahb66ca9750zdgashwnak7kxyrq7d763l";
    url = "https://hackage.haskell.org";
    ver = "6.0.2";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, foldable1-classes-compat, hashable, lib, tagged
, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.2";
  src = /nix/store/clbl4jx9x8bnjickxhp9s0k5hc87rfq4-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    foldable1-classes-compat hashable tagged template-haskell
    transformers transformers-compat unordered-containers
  ];
  homepage = "http://github.com/ekmett/semigroupoids";
  description = "Semigroupoids: Category sans id";
  license = lib.licenses.bsd2;
}
;
}
;
    statistics = {
  meta = {
    sha256 = "0hh6mi9h7kvsh0balhlf9nj36y4j9axanmq6gi6yfizzp6iag494";
    url = "https://hackage.haskell.org";
    ver = "0.16.5.0";
  };
  drv = { mkDerivation, aeson, async, base, binary, data-default-class
, deepseq, dense-linear-algebra, doctest, erf, ieee754, lib
, math-functions, mwc-random, parallel, primitive, QuickCheck
, random, tasty, tasty-bench, tasty-expected-failure, tasty-hunit
, tasty-quickcheck, vector, vector-algorithms
, vector-binary-instances, vector-th-unbox
}:
mkDerivation {
  pname = "statistics";
  version = "0.16.5.0";
  src = /nix/store/zirrd1jwz985qxykl9drph8ih47ajnqk-source;
  libraryHaskellDepends = [
    aeson async base binary data-default-class deepseq
    dense-linear-algebra math-functions mwc-random parallel primitive
    random vector vector-algorithms vector-binary-instances
    vector-th-unbox
  ];
  testHaskellDepends = [
    aeson base binary dense-linear-algebra doctest erf ieee754
    math-functions primitive QuickCheck tasty tasty-expected-failure
    tasty-hunit tasty-quickcheck vector vector-algorithms
  ];
  benchmarkHaskellDepends = [
    base mwc-random tasty tasty-bench vector
  ];
  homepage = "https://github.com/haskell/statistics";
  description = "A library of statistical types, data, and functions";
  license = lib.licensesSpdx."BSD-2-Clause";
}
;
}
;
    strict = {
  meta = {
    sha256 = "02iyvrr7nd7fnivz78lzdchy8zw1cghqj1qx2yzbbb9869h1mny7";
    url = "https://hackage.haskell.org";
    ver = "0.5";
  };
  drv = { mkDerivation, assoc, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, text, these, transformers
}:
mkDerivation {
  pname = "strict";
  version = "0.5";
  src = /nix/store/21ahwfbr944xz0c7cs47f6z86p78plps-source;
  libraryHaskellDepends = [
    assoc base binary bytestring deepseq ghc-prim hashable text these
    transformers
  ];
  homepage = "https://github.com/haskell-strict/strict";
  description = "Strict data types and String IO";
  license = lib.licenses.bsd3;
}
;
}
;
    tasty = {
  meta = {
    sha256 = "07vyy71nxl7q00akjcghsqd1lz9yf7lfr9kicr2q4ydfj9xkv8bw";
    url = "https://hackage.haskell.org";
    ver = "1.2.2";
  };
  drv = { mkDerivation, ansi-terminal, async, base, clock, containers, lib
, mtl, optparse-applicative, stm, tagged, unbounded-delays, unix
, wcwidth
}:
mkDerivation {
  pname = "tasty";
  version = "1.2.2";
  src = /nix/store/r83kryq2jm9yfy80ac74995kjxhfxfxj-source;
  libraryHaskellDepends = [
    ansi-terminal async base clock containers mtl optparse-applicative
    stm tagged unbounded-delays unix wcwidth
  ];
  homepage = "https://github.com/feuerbach/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
}
;
}
;
    tasty-hedgehog = {
  meta = {
    sha256 = "17q94i4rwdp1bc2wg5r8pblp8i74ivhc4nqih4w5ncmvhws0syix";
    url = "https://hackage.haskell.org";
    ver = "1.3.0.0";
  };
  drv = { mkDerivation, base, hedgehog, lib, tagged, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.3.0.0";
  src = /nix/store/mqlcpfwkyrjvizjvapz4a52ghqncbnnp-source;
  libraryHaskellDepends = [ base hedgehog tagged tasty ];
  testHaskellDepends = [
    base hedgehog tasty tasty-expected-failure
  ];
  homepage = "https://github.com/qfpl/tasty-hedgehog";
  description = "Integration for tasty and hedgehog";
  license = lib.licenses.bsd3;
}
;
}
;
    text-short = {
  meta = {
    sha256 = "1yzyzklry9cdc12283b0zf0kpa8nb7gixmdaf3l8x7388zpxhhay";
    url = "https://hackage.haskell.org";
    ver = "0.1.6.1";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "text-short";
  version = "0.1.6.1";
  src = /nix/store/bf8cszj81rj7svdscshl17z7mnr8zrdk-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq ghc-prim hashable template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring tasty tasty-hunit tasty-quickcheck text
  ];
  description = "Memory-efficient representation of Unicode text strings";
  license = lib.licenses.bsd3;
}
;
}
;
    th-abstraction = {
  meta = {
    sha256 = "0dkilfrvk8zdn3gvyfv5zgjbwqhdf1yg90fk4byka0ib43kgkyvf";
    url = "https://hackage.haskell.org";
    ver = "0.5.0.0";
  };
  drv = { mkDerivation, base, containers, ghc-prim, lib, template-haskell
}:
mkDerivation {
  pname = "th-abstraction";
  version = "0.5.0.0";
  src = /nix/store/2vqd74h0m054ngrfxigpx3hjyzv72724-source;
  libraryHaskellDepends = [
    base containers ghc-prim template-haskell
  ];
  testHaskellDepends = [ base containers template-haskell ];
  homepage = "https://github.com/glguy/th-abstraction";
  description = "Nicer interface for reified information about data types";
  license = lib.licenses.isc;
}
;
}
;
    these = {
  meta = {
    sha256 = "0jqchlmycfcvkff48shhkswansnzrw57q8945m483mrd59zpg27k";
    url = "https://hackage.haskell.org";
    ver = "1.2.1";
  };
  drv = { mkDerivation, assoc, base, binary, deepseq
, foldable1-classes-compat, hashable, lib
}:
mkDerivation {
  pname = "these";
  version = "1.2.1";
  src = /nix/store/aaw05vz42pjyhry145973mssbqw1n5i9-source;
  libraryHaskellDepends = [
    assoc base binary deepseq foldable1-classes-compat hashable
  ];
  homepage = "https://github.com/haskellari/these";
  description = "An either-or-both data type";
  license = lib.licenses.bsd3;
}
;
}
;
    time-compat = {
  meta = {
    sha256 = "02yq6qc9fbawpxkypaf4nm9vidfv5vvgidxyj4r3dxa4lb29jd2p";
    url = "https://hackage.haskell.org";
    ver = "1.9.9";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, hashable, HUnit, lib
, QuickCheck, random, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, time
}:
mkDerivation {
  pname = "time-compat";
  version = "1.9.9";
  src = /nix/store/5d4j6ha2hgp5qfaw2li1gwh8wbn8y7xq-source;
  libraryHaskellDepends = [
    base base-orphans deepseq hashable template-haskell time
  ];
  testHaskellDepends = [
    base deepseq hashable HUnit QuickCheck random tasty tasty-hunit
    tasty-quickcheck template-haskell
  ];
  homepage = "https://github.com/haskellari/time-compat";
  description = "Compatibility package for time";
  license = lib.licenses.bsd3;
}
;
}
;
    unbounded-delays = {
  meta = {
    sha256 = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
    url = "https://hackage.haskell.org";
    ver = "0.1.1.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "unbounded-delays";
  version = "0.1.1.1";
  src = /nix/store/hp6mlfj9kg8r7l4gjcak2i7zbxwjzl4s-source;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/basvandijk/unbounded-delays";
  description = "Unbounded thread delays and timeouts";
  license = lib.licenses.bsd3;
}
;
}
;
    unordered-containers = {
  meta = {
    sha256 = "0na84q5vxxww3pmz72ihpx4j7dhk71z28r55i7j0pq7mj27jasb0";
    url = "https://hackage.haskell.org";
    ver = "0.2.21";
  };
  drv = { mkDerivation, base, bytestring, ChasingBottoms, containers
, deepseq, hashable, hashmap, HUnit, lib, nothunks, QuickCheck
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.21";
  src = /nix/store/ld4hwdryaajryhzbsrflbpnqvd0pj634-source;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap random
    tasty-bench
  ];
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
}
;
}
;
    uuid-types = {
  meta = {
    sha256 = "1jrid43smmfcchrfwpzkxil16a4c5016y4b49yjka0sildj1lprg";
    url = "https://hackage.haskell.org";
    ver = "1.0.6.1";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, hashable, lib
, QuickCheck, random, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "uuid-types";
  version = "1.0.6.1";
  src = /nix/store/d7pn428v517nab28kznyyr4ccypibj48-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq hashable random template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck tasty tasty-hunit
    tasty-quickcheck
  ];
  homepage = "https://github.com/haskell-hvr/uuid";
  description = "Type definitions for Universally Unique Identifiers";
  license = lib.licenses.bsd3;
}
;
}
;
    vector = {
  meta = {
    sha256 = "0mgc7ikhdgqwsj5skdxsf6v3a1iqkiiysqj94qnbg40ff8nbai4x";
    url = "https://hackage.haskell.org";
    ver = "0.13.2.0";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, doctest, lib
, primitive, QuickCheck, random, tasty, tasty-bench, tasty-hunit
, tasty-inspection-testing, tasty-quickcheck, template-haskell
, transformers, vector-stream
}:
mkDerivation {
  pname = "vector";
  version = "0.13.2.0";
  src = /nix/store/b8qdb5sk1v1vp84rjv25n82721pdgixh-source;
  libraryHaskellDepends = [
    base deepseq primitive random tasty vector-stream
  ];
  testHaskellDepends = [
    base base-orphans doctest primitive QuickCheck random tasty
    tasty-hunit tasty-inspection-testing tasty-quickcheck
    template-haskell transformers
  ];
  benchmarkHaskellDepends = [ base random tasty tasty-bench ];
  doHaddock = false;
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Arrays";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    vector-algorithms = {
  meta = {
    sha256 = "0924b5cif1fm861hl0jwysiv0w6szgpjrn1x90sfli4dvb32ys3c";
    url = "https://hackage.haskell.org";
    ver = "0.9.1.0";
  };
  drv = { mkDerivation, base, bitvec, bytestring, containers, lib
, mwc-random, primitive, QuickCheck, vector
}:
mkDerivation {
  pname = "vector-algorithms";
  version = "0.9.1.0";
  src = /nix/store/p3l2vq0h38l4hg8b0npcikvlqbigpdaa-source;
  libraryHaskellDepends = [
    base bitvec bytestring primitive vector
  ];
  testHaskellDepends = [
    base bytestring containers QuickCheck vector
  ];
  benchmarkHaskellDepends = [ base mwc-random vector ];
  homepage = "https://github.com/erikd/vector-algorithms/";
  description = "Efficient algorithms for vector arrays";
  license = lib.licenses.bsd3;
}
;
}
;
    vector-binary-instances = {
  meta = {
    sha256 = "0pmmr18l0bjgn5gzb1n7na1fhprnr4cy5q6975hllkk6lwkgmivg";
    url = "https://hackage.haskell.org";
    ver = "0.2.5.2";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, lib, tasty
, tasty-bench, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "vector-binary-instances";
  version = "0.2.5.2";
  src = /nix/store/snhkkp31yxqh5ycw5r0ndplwdgdf4vkp-source;
  libraryHaskellDepends = [ base binary vector ];
  testHaskellDepends = [ base binary tasty tasty-quickcheck vector ];
  benchmarkHaskellDepends = [
    base binary bytestring deepseq tasty-bench vector
  ];
  homepage = "https://github.com/bos/vector-binary-instances";
  description = "Instances of Data.Binary for vector";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
    vector-stream = {
  meta = {
    sha256 = "08hp43wx8gvbak4dffkj76zcirnmfmk9csca87fjik5w61ci9dyp";
    url = "https://hackage.haskell.org";
    ver = "0.1.0.1";
  };
  drv = { mkDerivation, base, ghc-prim, lib }:
mkDerivation {
  pname = "vector-stream";
  version = "0.1.0.1";
  src = /nix/store/9h5w5lzcv5fd2is25nxgr4amahddf7h2-source;
  libraryHaskellDepends = [ base ghc-prim ];
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Streams";
  license = lib.licenses.bsd3;
}
;
}
;
    vector-th-unbox = {
  meta = {
    sha256 = "0agxmj1hprzmnz84b3vidrvhpk5wrxkljxgmlz1aaaxrp3284nqw";
    url = "https://hackage.haskell.org";
    ver = "0.2.2";
  };
  drv = { mkDerivation, base, data-default, lib, template-haskell, vector
}:
mkDerivation {
  pname = "vector-th-unbox";
  version = "0.2.2";
  src = /nix/store/gblghanf61k3yqd0gwcjrlpk7v7fhkj8-source;
  libraryHaskellDepends = [ base template-haskell vector ];
  testHaskellDepends = [ base data-default vector ];
  homepage = "https://github.com/tsurucapital/vector-th-unbox";
  description = "Deriver for Data.Vector.Unboxed using Template Haskell";
  license = lib.licenses.bsd3;
}
;
}
;
    wcwidth = {
  meta = {
    sha256 = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
    url = "https://hackage.haskell.org";
    ver = "0.0.2";
  };
  drv = { mkDerivation, base, containers, lib }:
mkDerivation {
  pname = "wcwidth";
  version = "0.0.2";
  src = /nix/store/n4f5lcschfan070bj3i6fa8pwjx1p94s-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base containers ];
  homepage = "http://github.com/solidsnack/wcwidth/";
  description = "Native wcwidth";
  license = lib.licenses.bsd3;
}
;
}
;
    witherable = {
  meta = {
    sha256 = "1ga4al351kwcfvsdr1ngyzj4aypvl46w357jflmgxacad8iqx4ik";
    url = "https://hackage.haskell.org";
    ver = "0.4.2";
  };
  drv = { mkDerivation, base, base-orphans, containers, hashable
, indexed-traversable, indexed-traversable-instances, lib
, QuickCheck, quickcheck-instances, tasty, tasty-quickcheck
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "witherable";
  version = "0.4.2";
  src = /nix/store/khn670w6drfhl6sgppi35rwi3ql27mrg-source;
  libraryHaskellDepends = [
    base base-orphans containers hashable indexed-traversable
    indexed-traversable-instances transformers unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers hashable QuickCheck quickcheck-instances tasty
    tasty-quickcheck transformers unordered-containers vector
  ];
  homepage = "https://github.com/fumieval/witherable";
  description = "filterable traversable";
  license = lib.licensesSpdx."BSD-3-Clause";
}
;
}
;
  };
}