{
dev = {
};
ghc910 = {
  incipit-base = {
  meta = {
    sha256 = "0iyyvxpyyybn5ygr875pav6g5hbs00wa9jbr7qslszqpkfpy5x33";
    ver = "0.6.1.0";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.6.1.0";
  src = /nix/store/2k1isywgqm3pcbzdhwyp97n9250g044k-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = "BSD-2-Clause-Patent";
}
;
}
;
};
ghc92 = {
};
ghc94 = {
};
ghc96 = {
};
ghc98 = {
};
hls = {
};
latest = {
  criterion = {
  meta = {
    sha256 = "0c8rgqjjjhwyxcma35j4a5lqndqz8pyhxq1qnmbav4wrc0vi9gyh";
    ver = "1.6.4.0";
  };
  drv = { mkDerivation, aeson, base, base-compat, base-compat-batteries
, binary, binary-orphans, bytestring, cassava, code-page
, containers, criterion-measurement, deepseq, directory, exceptions
, filepath, Glob, HUnit, js-chart, lib, microstache, mtl
, mwc-random, optparse-applicative, parsec, prettyprinter
, prettyprinter-ansi-terminal, QuickCheck, statistics, tasty
, tasty-hunit, tasty-quickcheck, text, time, transformers
, transformers-compat, vector, vector-algorithms
}:
mkDerivation {
  pname = "criterion";
  version = "1.6.4.0";
  src = /nix/store/l60vjvh174lbyp98af9mbszks4v9prbm-source;
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base base-compat-batteries binary binary-orphans bytestring
    cassava code-page containers criterion-measurement deepseq
    directory exceptions filepath Glob js-chart microstache mtl
    mwc-random optparse-applicative parsec prettyprinter
    prettyprinter-ansi-terminal statistics text time transformers
    transformers-compat vector vector-algorithms
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
  hedgehog = {
  meta = {
    sha256 = "1hz8xrg5p6vplvcj8c7pgidqnwqjmqahs9dla50nqpbcbdh932ll";
    ver = "1.5";
  };
  drv = { mkDerivation, ansi-terminal, async, barbies, base, bytestring
, concurrent-output, containers, deepseq, directory, erf
, exceptions, lib, lifted-async, mmorph, monad-control, mtl
, pretty-show, primitive, random, resourcet, safe-exceptions, stm
, template-haskell, text, time, transformers, transformers-base
, wl-pprint-annotated
}:
mkDerivation {
  pname = "hedgehog";
  version = "1.5";
  src = /nix/store/asphc2qzd1cykd892r5fnhflbd8cwana-source;
  libraryHaskellDepends = [
    ansi-terminal async barbies base bytestring concurrent-output
    containers deepseq directory erf exceptions lifted-async mmorph
    monad-control mtl pretty-show primitive random resourcet
    safe-exceptions stm template-haskell text time transformers
    transformers-base wl-pprint-annotated
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
  incipit-base = {
  meta = {
    sha256 = "0iyyvxpyyybn5ygr875pav6g5hbs00wa9jbr7qslszqpkfpy5x33";
    ver = "0.6.1.0";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.6.1.0";
  src = /nix/store/2k1isywgqm3pcbzdhwyp97n9250g044k-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  tasty = {
  meta = {
    sha256 = "1jqrcmibqv03109qc6lhi2jnip4mxygcd0j4j0g1n0q0akcplica";
    ver = "1.5.2";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.2";
  src = /nix/store/ly5d0sscd0dwlyr06nqhyscj3a99j8np-source;
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
};
lower = {
  OneTuple = {
  meta = {
    sha256 = "0mb81j6zhvzq7h9yyhi9cszrq1g5d4lv3a8wpwimcvzbyg9bdd6p";
    ver = "0.3.1";
  };
  drv = { mkDerivation, base, ghc-prim, hashable, lib, template-haskell }:
mkDerivation {
  pname = "OneTuple";
  version = "0.3.1";
  src = /nix/store/in1h1n0knfmv7f94dqnpr0mjb2v499r0-source;
  libraryHaskellDepends = [ base ghc-prim template-haskell ];
  testHaskellDepends = [ base hashable template-haskell ];
  description = "Singleton Tuple";
  license = lib.licenses.bsd3;
}
;
}
;
  abstract-deque = {
  meta = {
    sha256 = "19m3hha4nbxvlbxbpdnjary9g0wfpn3dwr8magxvsqi392krymsq";
    ver = "0.3";
  };
  drv = { mkDerivation, array, base, containers, lib, random, time }:
mkDerivation {
  pname = "abstract-deque";
  version = "0.3";
  src = /nix/store/c31gd69s3ll6z15ivxrbixndblzn9v3x-source;
  libraryHaskellDepends = [ array base containers random time ];
  homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
  description = "Abstract, parameterized interface to mutable Deques";
  license = lib.licenses.bsd3;
}
;
}
;
  abstract-par = {
  meta = {
    sha256 = "0pxhbfn9jhz10dyhdp82phaa8nhry4qp6pk0a5z8s4zsg0cjki5v";
    ver = "0.3.3";
  };
  drv = { mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "abstract-par";
  version = "0.3.3";
  src = /nix/store/97gb5minlhdnr89ddx55s97rdsfh97bv-source;
  libraryHaskellDepends = [ base deepseq ];
  homepage = "https://github.com/simonmar/monad-par";
  description = "Type classes generalizing the functionality of the 'monad-par' library";
  license = lib.licenses.bsd3;
}
;
}
;
  aeson = {
  meta = {
    sha256 = "1yqw1glxv3lh5759f7vrn2bq8ih9k5m9j56b34a61dxx07b1x1jq";
    ver = "2.0.3.0";
  };
  drv = { mkDerivation, attoparsec, base, base-compat
, base-compat-batteries, base-orphans, base16-bytestring
, bytestring, containers, data-fix, deepseq, Diff, directory, dlist
, filepath, generic-deriving, ghc-prim, hashable
, indexed-traversable, integer-logarithms, lib, OneTuple, primitive
, QuickCheck, quickcheck-instances, scientific, semialign, strict
, tagged, tasty, tasty-golden, tasty-hunit, tasty-quickcheck
, template-haskell, text, text-short, th-abstraction, these, time
, time-compat, unordered-containers, uuid-types, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.0.3.0";
  src = /nix/store/xavd6rm6p1kfww83prxkrw3akyx50xr1-source;
  libraryHaskellDepends = [
    attoparsec base base-compat-batteries bytestring containers
    data-fix deepseq dlist ghc-prim hashable indexed-traversable
    OneTuple primitive QuickCheck scientific semialign strict tagged
    template-haskell text text-short th-abstraction these time
    time-compat unordered-containers uuid-types vector witherable
  ];
  testHaskellDepends = [
    attoparsec base base-compat base-orphans base16-bytestring
    bytestring containers data-fix Diff directory dlist filepath
    generic-deriving ghc-prim hashable indexed-traversable
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
  ansi-wl-pprint = {
  meta = {
    sha256 = "08akbbdra1sx36ff1la5k7rcxlz543i86qk4gyyxbxy636m9fhwv";
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
    sha256 = "1sfc21z18sf8rpsbcr77kgw7qjpm5cm1d24n5ifsm2zid88v8fs9";
    ver = "1.0.2";
  };
  drv = { mkDerivation, base, bifunctors, lib, tagged }:
mkDerivation {
  pname = "assoc";
  version = "1.0.2";
  src = /nix/store/0f45f1f4qr2gfbn4syym13c6m2ihhg8b-source;
  libraryHaskellDepends = [ base bifunctors tagged ];
  description = "swap and assoc: Symmetric and Semigroupy Bifunctors";
  license = lib.licenses.bsd3;
}
;
}
;
  attoparsec = {
  meta = {
    sha256 = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
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
  base-orphans = {
  meta = {
    sha256 = "07j8v22qc18xsy6nh5nvic1z1pvp548sld67snd268jnnlh2kds1";
    ver = "0.8.8.2";
  };
  drv = { mkDerivation, base, ghc-prim, hspec, hspec-discover, lib
, QuickCheck
}:
mkDerivation {
  pname = "base-orphans";
  version = "0.8.8.2";
  src = /nix/store/b74mjgcby8svmnbxmwgd9ba36b9j8026-source;
  libraryHaskellDepends = [ base ghc-prim ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/haskell-compat/base-orphans#readme";
  description = "Backwards-compatible orphan instances for base";
  license = lib.licenses.mit;
}
;
}
;
  bifunctors = {
  meta = {
    sha256 = "0qymwahcn7nqw3n9hvgh0nqhpm6p2ci1grmnwwfplvhxsaka91aj";
    ver = "5.5.15";
  };
  drv = { mkDerivation, base, base-orphans, comonad, containers, hspec
, hspec-discover, lib, QuickCheck, tagged, template-haskell
, th-abstraction, transformers, transformers-compat
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.5.15";
  src = /nix/store/c14lfn0xfdacpa173iz0dp825w9dzkc3-source;
  libraryHaskellDepends = [
    base base-orphans comonad containers tagged template-haskell
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
    ver = "1.0.5";
  };
  drv = { mkDerivation, base, binary, data-array-byte, lib, OneTuple
, QuickCheck, quickcheck-instances, tagged, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "binary-orphans";
  version = "1.0.5";
  src = /nix/store/pymr9bnqss6p250d4bmlhq5vq1ypnqcp-source;
  libraryHaskellDepends = [ base binary data-array-byte ];
  testHaskellDepends = [
    base binary data-array-byte OneTuple QuickCheck
    quickcheck-instances tagged tasty tasty-quickcheck
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
    sha256 = "12dq5781j7zgyqlqmhlzg9c403gf34w3g929ck6v2h0s8ln11608";
    ver = "0.5.3.1";
  };
  drv = { mkDerivation, array, attoparsec, base, bytestring, containers
, deepseq, hashable, HUnit, lib, Only, QuickCheck
, quickcheck-instances, scientific, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
, text-short, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "cassava";
  version = "0.5.3.1";
  src = /nix/store/q2j0s702yspmx4a5m1l1ajyd6njqcwm1-source;
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
  cereal = {
  meta = {
    sha256 = "0abpk83jb58ilxl44iglgzc7x4ld14sz5m1sccxraz2xa8s3d0jh";
    ver = "0.5.8.3";
  };
  drv = { mkDerivation, array, base, bytestring, containers, ghc-prim, lib
, QuickCheck, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "cereal";
  version = "0.5.8.3";
  src = /nix/store/042qibkq9v20915gi6ssh4qkzqddqbbs-source;
  libraryHaskellDepends = [
    array base bytestring containers ghc-prim
  ];
  testHaskellDepends = [
    base bytestring QuickCheck test-framework
    test-framework-quickcheck2
  ];
  homepage = "https://github.com/GaloisInc/cereal";
  description = "A binary serialization library";
  license = lib.licenses.bsd3;
}
;
}
;
  clock = {
  meta = {
    sha256 = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
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
  comonad = {
  meta = {
    sha256 = "1wwn8z9f3flqlka2k51wqw8wsjcxbp8mwg6yp3vbn6akyjrn36gc";
    ver = "5.0.8";
  };
  drv = { mkDerivation, base, containers, distributive, indexed-traversable
, lib, tagged, transformers, transformers-compat
}:
mkDerivation {
  pname = "comonad";
  version = "5.0.8";
  src = /nix/store/q541saz9silsyzf34s10fdxk9j9yniag-source;
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
  concurrent-output = {
  meta = {
    sha256 = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
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
    sha256 = "1nnlw9q7z2yvdaadyanvxqqwzb67kmk0n59xnc2pz0fhvqmq3yh8";
    ver = "0.14.2";
  };
  drv = { mkDerivation, base, binary, boring, deepseq, ghc-prim, hashable
, hspec, hspec-discover, lib, mtl, transformers
}:
mkDerivation {
  pname = "constraints";
  version = "0.14.2";
  src = /nix/store/m4vmqr78zay3g1if0shqy6h0r35pj389-source;
  libraryHaskellDepends = [
    base binary boring deepseq ghc-prim hashable mtl transformers
  ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/constraints/";
  description = "Constraint manipulation";
  license = lib.licenses.bsd2;
}
;
}
;
  criterion = {
  meta = {
    sha256 = "1aglz199r77cmig7sirp7nngi3qsf9dhvgnfk52g42hxfwcfmlrn";
    ver = "1.5.11.0";
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
  version = "1.5.11.0";
  src = /nix/store/h88m0s1p45b7v85l61jl2iq1jpy6gami-source;
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
  data-fix = {
  meta = {
    sha256 = "16jcfmd4xiir72bmxpf130s5dg91yd2gpkjamwcaykckh3y746xp";
    ver = "0.3.3";
  };
  drv = { mkDerivation, base, deepseq, hashable, lib }:
mkDerivation {
  pname = "data-fix";
  version = "0.3.3";
  src = /nix/store/7ach1z180kaiklrivn4664vj5zjbxqc0-source;
  libraryHaskellDepends = [ base deepseq hashable ];
  homepage = "https://github.com/spell-music/data-fix";
  description = "Fixpoint data types";
  license = lib.licenses.bsd3;
}
;
}
;
  dense-linear-algebra = {
  meta = {
    sha256 = "1xyyixkj0pxy4lxsk08kpwff25g5cqskn1l3jv3spnjxr5q1zhxd";
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
  distributive = {
  meta = {
    sha256 = "1yfw2p46wbs3mcvw22b7f7x1jyrfinslb1bdx83v1v17q95aldj7";
    ver = "0.6.2.1";
  };
  drv = { mkDerivation, base, base-orphans, generic-deriving, hspec
, hspec-discover, lib, tagged, transformers
}:
mkDerivation {
  pname = "distributive";
  version = "0.6.2.1";
  src = /nix/store/64vz8hgvq1w3dlivjzg5ipva396i13l5-source;
  libraryHaskellDepends = [ base base-orphans tagged transformers ];
  testHaskellDepends = [ base generic-deriving hspec ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/distributive/";
  description = "Distributive functors -- Dual to Traversable";
  license = lib.licenses.bsd3;
}
;
}
;
  hedgehog = {
  meta = {
    sha256 = "1c55194m9nfvpdf18babfsfjc3zdzdyiy8a7c3whb268ak36rssd";
    ver = "1.1";
  };
  drv = { mkDerivation, ansi-terminal, async, barbies, base, bytestring
, concurrent-output, containers, deepseq, directory, erf
, exceptions, lib, lifted-async, mmorph, monad-control, mtl
, pretty-show, primitive, random, resourcet, stm, template-haskell
, text, time, transformers, transformers-base, wl-pprint-annotated
}:
mkDerivation {
  pname = "hedgehog";
  version = "1.1";
  src = /nix/store/vcgk40sz9q4iw1qjwncxq35napgb55pq-source;
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
  incipit-base = {
  meta = {
    sha256 = "02fdppamn00m94xqi4zhm6sl1ndg6lhn24m74w24pq84h44mynl6";
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
  license = "BSD-2-Clause-Patent";
}
;
}
;
  indexed-traversable = {
  meta = {
    sha256 = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
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
    sha256 = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
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
  lifted-async = {
  meta = {
    sha256 = "1bd00yz0f7hlxf85i5hzq1dnlqgnhd99d5zvkxb4710w0hrc28rx";
    ver = "0.10.2.5";
  };
  drv = { mkDerivation, async, base, constraints, deepseq, HUnit, lib
, lifted-base, monad-control, mtl, tasty, tasty-bench
, tasty-expected-failure, tasty-hunit, tasty-th, transformers-base
}:
mkDerivation {
  pname = "lifted-async";
  version = "0.10.2.5";
  src = /nix/store/4j2f8fpmpiyarqhjsprr6l88ssl611si-source;
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
  lifted-base = {
  meta = {
    sha256 = "074bfycdqnr78y05xvgmfgk09fsnjxykij68ryi4xbrx7qwzqgqm";
    ver = "0.2.3.12";
  };
  drv = { mkDerivation, base, criterion, HUnit, lib, monad-control
, monad-peel, test-framework, test-framework-hunit, transformers
, transformers-base, transformers-compat
}:
mkDerivation {
  pname = "lifted-base";
  version = "0.2.3.12";
  src = /nix/store/496mih1jblcvz44vwrjbjdhwv30cyh2z-source;
  libraryHaskellDepends = [ base monad-control transformers-base ];
  testHaskellDepends = [
    base HUnit monad-control test-framework test-framework-hunit
    transformers transformers-base transformers-compat
  ];
  benchmarkHaskellDepends = [
    base criterion monad-control monad-peel transformers
  ];
  homepage = "https://github.com/basvandijk/lifted-base";
  description = "lifted IO operations from the base library";
  license = lib.licenses.bsd3;
}
;
}
;
  math-functions = {
  meta = {
    sha256 = "01mi15cb6wqlizg3vl7x1a543f3adppmffwq65y8033y69hccv6y";
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
  monad-control = {
  meta = {
    sha256 = "150lv32h8ywx09j1shl33qvx0w68ixdxnv6yah050a3d0gq8xzks";
    ver = "1.0.3.1";
  };
  drv = { mkDerivation, base, lib, stm, transformers, transformers-base
, transformers-compat
}:
mkDerivation {
  pname = "monad-control";
  version = "1.0.3.1";
  src = /nix/store/h3gg4hd0898vxqfbka5b2xz4qkvqxdx6-source;
  libraryHaskellDepends = [
    base stm transformers transformers-base transformers-compat
  ];
  homepage = "https://github.com/basvandijk/monad-control";
  description = "Lift control operations, like exception catching, through monad transformers";
  license = lib.licenses.bsd3;
}
;
}
;
  monad-par = {
  meta = {
    sha256 = "05ky66zn6v2z3i3ibgb9fxby8x1c4db0d456db2r1dxk3maps6wz";
    ver = "0.3.6";
  };
  drv = { mkDerivation, abstract-deque, abstract-par, array, base
, containers, deepseq, HUnit, lib, monad-par-extras, mtl
, mwc-random, parallel, QuickCheck, test-framework
, test-framework-hunit, test-framework-quickcheck2
, test-framework-th, time
}:
mkDerivation {
  pname = "monad-par";
  version = "0.3.6";
  src = /nix/store/94j5z0983fzv1169ifc99i90r1v22xpq-source;
  libraryHaskellDepends = [
    abstract-deque abstract-par array base containers deepseq
    monad-par-extras mtl mwc-random parallel
  ];
  testHaskellDepends = [
    abstract-deque abstract-par array base containers deepseq HUnit
    monad-par-extras mtl mwc-random QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2 test-framework-th
    time
  ];
  homepage = "https://github.com/simonmar/monad-par";
  description = "A library for parallel programming based on a monad";
  license = lib.licenses.bsd3;
}
;
}
;
  monad-par-extras = {
  meta = {
    sha256 = "1rni6fvg69msbynjrf8s8j9ldbz8gdjfqqvkfb00hb5nfs3fnmp0";
    ver = "0.3.3";
  };
  drv = { mkDerivation, abstract-par, base, cereal, deepseq, lib, mtl
, random, transformers
}:
mkDerivation {
  pname = "monad-par-extras";
  version = "0.3.3";
  src = /nix/store/ngr0vpymrnrf6fallj8s2cbqzdgqmxx5-source;
  libraryHaskellDepends = [
    abstract-par base cereal deepseq mtl random transformers
  ];
  homepage = "https://github.com/simonmar/monad-par";
  description = "Combinators and extra features for Par monads";
  license = lib.licenses.bsd3;
}
;
}
;
  mwc-random = {
  meta = {
    sha256 = "1mpill3lwrrhlzq0ccs8wyzsqhy1a2hmva17qxpgsy2zzqxi1nx1";
    ver = "0.15.0.2";
  };
  drv = { mkDerivation, base, bytestring, doctest, gauge, lib
, math-functions, mersenne-random, primitive, QuickCheck, random
, tasty, tasty-hunit, tasty-quickcheck, time, vector
}:
mkDerivation {
  pname = "mwc-random";
  version = "0.15.0.2";
  src = /nix/store/ba2pn44zwx7h55b4lzqphjrisk45q6bb-source;
  libraryHaskellDepends = [
    base math-functions primitive random time vector
  ];
  testHaskellDepends = [
    base bytestring doctest primitive QuickCheck random tasty
    tasty-hunit tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [
    base gauge mersenne-random random vector
  ];
  doCheck = false;
  homepage = "https://github.com/bos/mwc-random";
  description = "Fast, high quality pseudo random number generation";
  license = lib.licenses.bsd3;
}
;
}
;
  optparse-applicative = {
  meta = {
    sha256 = "1jmaizbpksnaf89afz8yz3phnjmyrzch2r22ir8ydw22f6zd5srk";
    ver = "0.16.1.0";
  };
  drv = { mkDerivation, ansi-wl-pprint, base, lib, process, QuickCheck
, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.16.1.0";
  src = /nix/store/gz5a20kw0w49zqq3ip5zxrx4x5v0qnl4-source;
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
  primitive = {
  meta = {
    sha256 = "0n7r8al9wgz4r7jzizapn1dbnkqxwx2c4lqkgfm5q5bxj8fl7g1c";
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
    sha256 = "0mpw54c3s0x70k5l52a57yhnmbgrksb3dn0vjq4m37spyzsfl1v2";
    ver = "1.2.0.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.2.0.1";
  src = /nix/store/hj1ji3nvdr001i39xfd9gsahdl5k4fln-source;
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
    sha256 = "0sknyh441xrna6w6d65j189n59najbp8h7g2ndr9qswxh7z2qaf1";
    ver = "5.3.7";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, distributive, hashable, lib, tagged
, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "5.3.7";
  src = /nix/store/s1ndw8kk9gk95dqxwr3518s8r70g93kb-source;
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
    sha256 = "1sg1gv2sc8rdsl6qby6p80xv3iasy6w2khbkc6cx7j2iva67v33r";
    ver = "0.15.2.0";
  };
  drv = { mkDerivation, aeson, async, base, base-orphans, binary
, data-default-class, deepseq, dense-linear-algebra, erf, ieee754
, lib, math-functions, monad-par, mwc-random, primitive, QuickCheck
, tasty, tasty-expected-failure, tasty-hunit, tasty-quickcheck
, vector, vector-algorithms, vector-binary-instances
, vector-th-unbox
}:
mkDerivation {
  pname = "statistics";
  version = "0.15.2.0";
  src = /nix/store/ziyzf5vr470ghazida15wky1db2zwcyq-source;
  libraryHaskellDepends = [
    aeson async base base-orphans binary data-default-class deepseq
    dense-linear-algebra math-functions monad-par mwc-random primitive
    vector vector-algorithms vector-binary-instances vector-th-unbox
  ];
  testHaskellDepends = [
    aeson base binary dense-linear-algebra erf ieee754 math-functions
    mwc-random primitive QuickCheck tasty tasty-expected-failure
    tasty-hunit tasty-quickcheck vector vector-algorithms
  ];
  homepage = "https://github.com/bos/statistics";
  description = "A library of statistical types, data, and functions";
  license = lib.licenses.bsd2;
}
;
}
;
  strict = {
  meta = {
    sha256 = "0xhr98m2632k2pic8q9bpnm3mp9098mmg4s66ds052b92494k49f";
    ver = "0.4.0.1";
  };
  drv = { mkDerivation, assoc, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, text, these, transformers
}:
mkDerivation {
  pname = "strict";
  version = "0.4.0.1";
  src = /nix/store/izpgh8vb0mg8ny6j5dj62f4bab9lsf1c-source;
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
    sha256 = "1cnqrv0k5zkky01pssjy2zm72g73wvqn5c8hj05bq9i9khbbcgkd";
    ver = "1.4.0.3";
  };
  drv = { mkDerivation, ansi-terminal, base, clock, containers, lib, mtl
, optparse-applicative, stm, tagged, unbounded-delays, unix
, wcwidth
}:
mkDerivation {
  pname = "tasty";
  version = "1.4.0.3";
  src = /nix/store/8zx6lm9armv8mn95il5h927g3j0yxw02-source;
  libraryHaskellDepends = [
    ansi-terminal base clock containers mtl optparse-applicative stm
    tagged unbounded-delays unix wcwidth
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
    sha256 = "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
    ver = "1.1.0.0";
  };
  drv = { mkDerivation, base, hedgehog, lib, tagged, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.1.0.0";
  src = /nix/store/zgd5n9ayjd67p7665rrqbvzxl2zn4a10-source;
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
    sha256 = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
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
    sha256 = "19nh7a9b4yif6sijp6xns6xlxcr1mcyrqx3cfbp5bdm7mkbda7a9";
    ver = "0.4.5.0";
  };
  drv = { mkDerivation, base, containers, ghc-prim, lib, template-haskell
}:
mkDerivation {
  pname = "th-abstraction";
  version = "0.4.5.0";
  src = /nix/store/60fdh9cnrz0zzin9ali21npxs10n3f51-source;
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
    sha256 = "1i1nfh41vflvqxi8w8n2s35ymx2z9119dg5zmd2r23ya7vwvaka1";
    ver = "1.1.1.1";
  };
  drv = { mkDerivation, assoc, base, binary, deepseq, hashable, lib }:
mkDerivation {
  pname = "these";
  version = "1.1.1.1";
  src = /nix/store/wkndkc7aw7b53vfx747g7m3qwzl7kicp-source;
  libraryHaskellDepends = [ assoc base binary deepseq hashable ];
  homepage = "https://github.com/isomorphism/these";
  description = "An either-or-both data type";
  license = lib.licenses.bsd3;
}
;
}
;
  time-compat = {
  meta = {
    sha256 = "0ika8xx9zff8rwaabs17q5c30c1b9ii89jhbvahi5nk7rs0cd5fs";
    ver = "1.9.6.1";
  };
  drv = { mkDerivation, base, base-compat, base-orphans, deepseq, hashable
, HUnit, lib, QuickCheck, tagged, tasty, tasty-hunit
, tasty-quickcheck, time
}:
mkDerivation {
  pname = "time-compat";
  version = "1.9.6.1";
  src = /nix/store/r5pf6kwybjyjpwh4knlr4j6vr2lz5nym-source;
  libraryHaskellDepends = [
    base base-orphans deepseq hashable time
  ];
  testHaskellDepends = [
    base base-compat deepseq hashable HUnit QuickCheck tagged tasty
    tasty-hunit tasty-quickcheck time
  ];
  homepage = "https://github.com/haskellari/time-compat";
  description = "Compatibility package for time";
  license = lib.licenses.bsd3;
}
;
}
;
  transformers-base = {
  meta = {
    sha256 = "125mrxdarrfsl87pfa00mjw9lz6xcgib0wfjsqmsaya0kd4ikhlm";
    ver = "0.4.6";
  };
  drv = { mkDerivation, base, base-orphans, lib, stm, transformers
, transformers-compat
}:
mkDerivation {
  pname = "transformers-base";
  version = "0.4.6";
  src = /nix/store/17kgi67wirn85ph4l31mm4pf2cz66hnv-source;
  libraryHaskellDepends = [
    base base-orphans stm transformers transformers-compat
  ];
  homepage = "https://github.com/mvv/transformers-base";
  description = "Lift computations from the bottom of a transformer stack";
  license = lib.licenses.bsd3;
}
;
}
;
  unbounded-delays = {
  meta = {
    sha256 = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
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
    sha256 = "0dvlf9by7mkwaxg2x26m6bf5bnqr1l07j6adksavvziiq0x3p135";
    ver = "0.2.20";
  };
  drv = { mkDerivation, base, bytestring, ChasingBottoms, containers
, deepseq, hashable, hashmap, HUnit, lib, mtl, nothunks, QuickCheck
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.20";
  src = /nix/store/mp0402hnkp6kfz16skphsdjfxaz088wh-source;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap mtl random
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
    sha256 = "1i8cm1qyni59vb0q7hb36djskyhysbcm36cgsysarj6fp7hni1dz";
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
    sha256 = "0c1nw2sx14y29afdbwl40sk9vznx71rja5jcg14b8986778kl32d";
    ver = "0.13.1.0";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, doctest, HUnit, lib
, primitive, QuickCheck, random, tasty, tasty-bench, tasty-hunit
, tasty-inspection-testing, tasty-quickcheck, template-haskell
, transformers, vector-stream
}:
mkDerivation {
  pname = "vector";
  version = "0.13.1.0";
  src = /nix/store/44g0nh165fmk0mj359hiq2s03ymx3h4h-source;
  libraryHaskellDepends = [ base deepseq primitive vector-stream ];
  testHaskellDepends = [
    base base-orphans doctest HUnit primitive QuickCheck random tasty
    tasty-hunit tasty-inspection-testing tasty-quickcheck
    template-haskell transformers
  ];
  benchmarkHaskellDepends = [ base random tasty tasty-bench ];
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Arrays";
  license = lib.licenses.bsd3;
}
;
}
;
  vector-algorithms = {
  meta = {
    sha256 = "162dy1znvv3jxm4kccv0lmcb8bq5qzfjsqgd9879hmvv0ql3693h";
    ver = "0.9.0.2";
  };
  drv = { mkDerivation, base, bitvec, bytestring, containers, lib
, mwc-random, primitive, QuickCheck, vector
}:
mkDerivation {
  pname = "vector-algorithms";
  version = "0.9.0.2";
  src = /nix/store/yl7r9i3693l1p3ywsmmqzyhkf1wah9b5-source;
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
  license = lib.licenses.bsd3;
}
;
}
;
  vector-th-unbox = {
  meta = {
    sha256 = "0agxmj1hprzmnz84b3vidrvhpk5wrxkljxgmlz1aaaxrp3284nqw";
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
  license = lib.licenses.bsd3;
}
;
}
;
};
min = {
};
profiled = {
};
}