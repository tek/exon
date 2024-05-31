{
  bounds = {
    exon = {
      base = {
        lower = null;
        upper = "4.20";
      };
      criterion = {
        lower = null;
        upper = "1.7";
      };
      ghc = {
        lower = null;
        upper = "9.9";
      };
      hedgehog = {
        lower = null;
        upper = "1.5";
      };
      incipit-base = {
        lower = null;
        upper = "0.7";
      };
      parsec = {
        lower = null;
        upper = "3.2";
      };
      tasty = {
        lower = null;
        upper = "1.5";
      };
      tasty-hedgehog = {
        lower = null;
        upper = "1.5";
      };
      template-haskell = {
        lower = null;
        upper = "2.22";
      };
    };
  };
  versions = {
    latest = {
      base = "4.19.1.0";
      criterion = "1.6.3.0";
      ghc = "9.8.2";
      hedgehog = "1.4";
      incipit-base = "0.6.0.0";
      parsec = "3.1.17.0";
      tasty = "1.4.3";
      tasty-hedgehog = "1.4.0.2";
      template-haskell = "2.21.0.0";
    };
    lower = {};
  };
  initial = {
    latest = {};
    lower = {};
  };
  overrides = {
    latest = {
      incipit-base = {
        version = "0.6.0.0";
        hash = "1hck35yfy0dcgimgnd90w02zvv7x7k456bljrbx2mwxalnhav9gf";
      };
    };
  };
  resolving = false;
}
