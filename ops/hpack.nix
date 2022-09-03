{ config, lib, ... }:
with builtins;
with lib;
let

  mergeAttr = a: b:
  if isAttrs a
  then merge a b
  else if isList a
  then a ++ b
  else b;

  merge = l: r:
  let
    f = name:
    if hasAttr name l && hasAttr name r
    then mergeAttr l.${name} r.${name}
    else l.${name} or r.${name};
  in genAttrs (concatMap attrNames [l r]) f;

  paths = name: {
    when = {
      condition = false;
      generated-other-modules = ["Paths_${replaceStrings ["-"] ["_"] name}"];
    };
  };

  meta = {
    version = import ./version.nix;
    license = "BSD-2-Clause-Patent";
    license-file = "LICENSE";
    author = "Torsten Schmits";
    maintainer = "hackage@tryp.io";
    copyright = "2022 Torsten Schmits";
    category = "String";
    build-type = "Simple";
    github = "tek/exon";
  };

  options.ghc-options = [
    "-Wall"
    "-Wredundant-constraints"
    "-Wincomplete-uni-patterns"
    "-Wmissing-deriving-strategies"
    "-Widentities"
    "-Wunused-packages"
  ];

  dependencies = [
      { name = "base"; version = ">= 4.12 && < 5"; mixin = "hiding (Prelude)"; }
      { name = "incipit-base"; version = ">= 0.2"; mixin = ["(IncipitBase as Prelude)" "hiding (IncipitBase)"]; }
    ];

  project = name: doc: merge (meta // { library = paths name; } // options) {
    inherit name;
    description = "See https://hackage.haskell.org/package/${name}/docs/${doc}.html";
    library = {
      source-dirs = "lib";
      inherit dependencies;
    };
    default-extensions = config.ghci.extensions;
  };

  exe = name: dir: merge (paths name // {
    main = "Main.hs";
    source-dirs = dir;
    inherit dependencies;
    ghc-options = [
      "-threaded"
      "-rtsopts"
      "-with-rtsopts=-N"
    ];
  });

in {

  exon = merge (project "exon" "Exon") {
    synopsis = "Customizable Quasiquote Interpolation";
    library.dependencies = [
      "flatparse >= 0.3.5.1"
      "generics-sop"
      "haskell-src-exts < 1.24"
      "haskell-src-meta < 0.9"
      "template-haskell"
      "type-errors-pretty"
    ];
    tests.exon-unit = exe "exon" "test" {
      dependencies = [
      "exon"
      "hedgehog"
      "tasty"
      "tasty-hedgehog"
      "template-haskell"
      ];
    };
    benchmarks.exon-bench = merge (paths "exon") {
    main = "Main.hs";
    source-dirs = "benchmark";
      dependencies = dependencies ++ [
        "exon"
        "criterion"
      ];
    };
  };

}
