{
  bounds = {
    exon = {
      base = {
        lower = "4.16.4.0";
        upper = "4.22";
      };
      criterion = {
        lower = "1.5.11.0";
        upper = "1.7";
      };
      exon = {
        lower = null;
        upper = null;
      };
      ghc = {
        lower = "9.2.8";
        upper = "9.13";
      };
      hedgehog = {
        lower = "1.1";
        upper = "1.8";
      };
      incipit-base = {
        lower = "0.5.0.0";
        upper = "0.7";
      };
      parsec = {
        lower = "3.1.15.0";
        upper = "3.2";
      };
      tasty = {
        lower = "1.4.0.3";
        upper = "1.6";
      };
      tasty-hedgehog = {
        lower = "1.1.0.0";
        upper = "1.5";
      };
      template-haskell = {
        lower = "2.18.0.0";
        upper = "2.24";
      };
    };
  };
  versions = {
    latest = {
      base = "4.21.0.0";
      criterion = "1.6.4.1";
      ghc = "9.12.1";
      hedgehog = "1.7";
      incipit-base = "0.6.1.1";
      parsec = "3.1.18.0";
      tasty = "1.5.3";
      tasty-hedgehog = "1.4.0.2";
      template-haskell = "2.23.0.0";
    };
    lower = {
      base = "4.16.4.0";
      criterion = "1.5.11.0";
      ghc = "9.2.8";
      hedgehog = "1.1";
      incipit-base = "0.5.0.0";
      parsec = "3.1.15.0";
      tasty = "1.4.0.3";
      tasty-hedgehog = "1.1.0.0";
      template-haskell = "2.18.0.0";
    };
  };
  initial = {
    latest = {};
    lower = {
      criterion = "1.6.0.0";
      hedgehog = "1.2";
      incipit-base = "0.6.0.0";
      parsec = "3.1.15.0";
      tasty = "1.4.0.3";
      tasty-hedgehog = "1.4.0.0";
    };
  };
  overrides = {
    latest = {
      Glob = {
        version = "0.10.2";
        hash = "1v74ynmlz1qi8m5l7jkbyhjfmrjhklrzhjwh2lpfhrr285n1008l";
        repo = "hackage.haskell.org";
      };
      OneTuple = {
        version = "0.4.2";
        hash = "1940dmd9rhr5fvlwidqm0bcm1015kgbr820lvfdr993rcy1mmxdg";
        repo = "hackage.haskell.org";
      };
      Only = {
        version = "0.1";
        hash = "1a8a5sapa8jpciglsv98snx2khkn9hplh8rn41p47j9796gxb5jw";
        repo = "hackage.haskell.org";
      };
      QuickCheck = {
        version = "2.15.0.1";
        hash = "1dcqv7z83wrbv7wvm7hdvjapfyzi9g4wjwsh9x6zh9ff622z53lb";
        repo = "hackage.haskell.org";
      };
      StateVar = {
        version = "1.2.2";
        hash = "1grkv7sinn3wlk0xgwn4in5xxqmssrrfhp2hjxy9imhh8li40grf";
        repo = "hackage.haskell.org";
      };
      aeson = {
        version = "2.2.3.0";
        hash = "1a9a0z6ljbck5scwkk9r9p04y9avn9vja3n063lyqgn2v1vjb1sp";
        repo = "hackage.haskell.org";
      };
      assoc = {
        version = "1.1.1";
        hash = "0v4j6bn73dm3xnpkfdx0dg7q4vypl4k31pg35vycfp8w00jv6b6q";
        repo = "hackage.haskell.org";
      };
      async = {
        version = "2.2.5";
        hash = "1y1cgzi8fy8qhyd69q7avhx46sz5h5ljggh81azr67rqrdhdyf4a";
        repo = "hackage.haskell.org";
      };
      attoparsec = {
        version = "0.14.4";
        hash = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
        repo = "hackage.haskell.org";
      };
      base-compat = {
        version = "0.14.1";
        hash = "191rfsma0ig8gc05qawwcc418qimdsjmxkgn7gvcx6wwp0297h3b";
        repo = "hackage.haskell.org";
      };
      base-compat-batteries = {
        version = "0.14.1";
        hash = "0racz6cnw0bngwpwhyfhm7q7l492zs0f07wq6wvbzlkfac7lfd8y";
        repo = "hackage.haskell.org";
      };
      bifunctors = {
        version = "5.6.2";
        hash = "1g0z6q5z04zgp7kaf917nrj2iiz1lsqh8ji5ny5ly534zr9zya2m";
        repo = "hackage.haskell.org";
      };
      binary-orphans = {
        version = "1.0.5";
        hash = "0yv6h7zj61s04myidbqlq44vlcar63gshx6n1mhl180ffaij38yf";
        repo = "hackage.haskell.org";
      };
      bitvec = {
        version = "1.1.5.0";
        hash = "1ms8sy3dc2yjkxy4m5nam2wyv9rdni8npm4zx07j7k8mn3gw763a";
        repo = "hackage.haskell.org";
      };
      cassava = {
        version = "0.5.3.2";
        hash = "0zhzl8ffnhizdxfc0lv64qliyqk4s84qqmklq2g2hg542n2v2drp";
        repo = "hackage.haskell.org";
      };
      character-ps = {
        version = "0.1";
        hash = "13yvm3ifpk6kfqba49r1xz0xyxcn0jw7xdkkblzsb5v0nf64g4dx";
        repo = "hackage.haskell.org";
      };
      code-page = {
        version = "0.2.1";
        hash = "1g6adshrqhn21b61vxhjzjzxvw7m1ildrq4jaj02wmlg6p6yvcwn";
        repo = "hackage.haskell.org";
      };
      comonad = {
        version = "5.0.9";
        hash = "0j7xm3vdd7icc6z557kph79g3z0c2xfi67lm3yzky0nhxgmcjckd";
        repo = "hackage.haskell.org";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
        repo = "hackage.haskell.org";
      };
      constraints = {
        version = "0.14.2";
        hash = "1nnlw9q7z2yvdaadyanvxqqwzb67kmk0n59xnc2pz0fhvqmq3yh8";
        repo = "hackage.haskell.org";
      };
      contravariant = {
        version = "1.5.5";
        hash = "0931bvc2iv3l29phnq8qsmmkicgz4yfk7c6hrqavs8d5c5j4zpj8";
        repo = "hackage.haskell.org";
      };
      criterion = {
        version = "1.6.4.1";
        hash = "1dxm8265yr60l47lbwgjb1yj3khwn3m666k5rdhhhsdydl7ydggb";
        repo = "hackage.haskell.org";
      };
      criterion-measurement = {
        version = "0.2.3.0";
        hash = "0759hlq6sh5rzmfdrb1hswpglh1m534zdp3hnyc5kfnyacnyyigw";
        repo = "hackage.haskell.org";
      };
      data-fix = {
        version = "0.3.4";
        hash = "0x8r2r8gmdvsclaszg90zn7gla6s8r6salbvgfsp0rscdjzj01ry";
        repo = "hackage.haskell.org";
      };
      dense-linear-algebra = {
        version = "0.1.0.0";
        hash = "1xyyixkj0pxy4lxsk08kpwff25g5cqskn1l3jv3spnjxr5q1zhxd";
        repo = "hackage.haskell.org";
      };
      generically = {
        version = "0.1.1";
        hash = "1658df4jbhzgpsqqgxp71bgry7ak5q0bjlrw6x551g54vvcydbxz";
        repo = "hackage.haskell.org";
      };
      hashable = {
        version = "1.5.0.0";
        hash = "1hh22f23apsjrn3h36vzw9871jqw6y4r4di1351qs5mqqabhd011";
        repo = "hackage.haskell.org";
      };
      hedgehog = {
        version = "1.7";
        hash = "04cjnz4i1qs3v9bza8a3ry1czapwqgxazhywkjzq2rg1544gjmby";
        repo = "hackage.haskell.org";
      };
      hsc2hs = {
        version = "0.68.10";
        hash = "0wdg17kicnp6qbgynha216vihx7nnsglvhn5c089dqpa14hg35zw";
        repo = "hackage.haskell.org";
      };
      incipit-base = {
        version = "0.6.1.1";
        hash = "08ybv7j94yyznrxnrh744bi3i1a00sz8bf5ddfs9vfgfhhkrg8fn";
        repo = "hackage.haskell.org";
      };
      indexed-traversable = {
        version = "0.1.4";
        hash = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
        repo = "hackage.haskell.org";
      };
      indexed-traversable-instances = {
        version = "0.1.2";
        hash = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
        repo = "hackage.haskell.org";
      };
      integer-conversion = {
        version = "0.1.1";
        hash = "0jrch63xc80fq6s14zwi5wcmbrj8zr7anl420sq98aglx3df9yr3";
        repo = "hackage.haskell.org";
      };
      integer-logarithms = {
        version = "1.0.4";
        hash = "0yyj0g5xkm1pjkkr4smf25lpzc936df0fyc4nsj4bx145ggspx3k";
        repo = "hackage.haskell.org";
      };
      js-chart = {
        version = "2.9.4.1";
        hash = "06gp1z4aa1bcn954cingac25vv8gc22km28d0glcp14a1bmxjany";
        repo = "hackage.haskell.org";
      };
      lifted-async = {
        version = "0.10.2.7";
        hash = "0cgzs8sfr3l7ah5nnscpp50v5mmvc4hqf02zdi4h344dbbha10fy";
        repo = "hackage.haskell.org";
      };
      math-functions = {
        version = "0.3.4.4";
        hash = "01mi15cb6wqlizg3vl7x1a543f3adppmffwq65y8033y69hccv6y";
        repo = "hackage.haskell.org";
      };
      microstache = {
        version = "1.0.3";
        hash = "0qcld6ns7sp0m664grdvjp0yzip2yajhqiq1r6nkaicgq2v6dxjr";
        repo = "hackage.haskell.org";
      };
      mwc-random = {
        version = "0.15.2.0";
        hash = "1b9y6vqzdybbx0qrdfpxxrhb79kq262s8fk5nvww10h12kdb7n4z";
        repo = "hackage.haskell.org";
      };
      network-uri = {
        version = "2.6.4.2";
        hash = "0zj83viziy80f7nybpmc1hki8wrd8pzps31fxns9vxhc1p7l9chj";
        repo = "hackage.haskell.org";
      };
      parallel = {
        version = "3.2.2.0";
        hash = "0j6k54y7mcc8lii99f4i696g67kfzpyma3l7aa9q97w8cj8xv24n";
        repo = "hackage.haskell.org";
      };
      parsec = {
        version = "3.1.18.0";
        hash = "089j939xxi6w6a2ggr40c4s2kdbwkzap2mnhvimmf45hg865h48n";
        repo = "hackage.haskell.org";
      };
      scientific = {
        version = "0.3.8.0";
        hash = "155cbbcyaqyxl2ij7q4fwi07qw3qnhwh4a97ccvrrfpd5lpl22q9";
        repo = "hackage.haskell.org";
      };
      semialign = {
        version = "1.3.1";
        hash = "05h1ab484ghd2wzx4pdlsfwiy6rayy0lzwk9yda9il7fjwi9sj7n";
        repo = "hackage.haskell.org";
      };
      semigroupoids = {
        version = "6.0.1";
        hash = "10qd2y5f5m7jzrha1wfbwwybhhghdwkdmk9ajybdz8h88cz9ig2g";
        repo = "hackage.haskell.org";
      };
      statistics = {
        version = "0.16.2.1";
        hash = "141s4yaci3jxaq8pgfs6mqiqc1krlgibr0ld0hh56d6c585jiyar";
        repo = "hackage.haskell.org";
      };
      strict = {
        version = "0.5.1";
        hash = "06y3ab0nsdbrkrxzc7hgy6cwxl72wcgqn52bs1vvi5lkp64v559y";
        repo = "hackage.haskell.org";
      };
      tasty = {
        version = "1.5.3";
        hash = "1xjlmgsww34asjl9rcwbziw5l4qqbvi5l4b7qvzf4dc7hqkpq1rs";
        repo = "hackage.haskell.org";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
        repo = "hackage.haskell.org";
      };
      text-iso8601 = {
        version = "0.1.1";
        hash = "0lk8y0g5p2zamkgvxy7i5lqfpa4wnic9vg2bl87s801fniwdij3m";
        repo = "hackage.haskell.org";
      };
      text-short = {
        version = "0.1.6";
        hash = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
        repo = "hackage.haskell.org";
      };
      th-abstraction = {
        version = "0.7.1.0";
        hash = "09wr7x9bpzyrys8id1mavk9wvqhh2smxdkfwi82kpcycm7a1z7sx";
        repo = "hackage.haskell.org";
      };
      th-compat = {
        version = "0.1.6";
        hash = "1zdj59i2id6mnxq798yjd46zwz83agqid76zkwaiighwv8yfckph";
        repo = "hackage.haskell.org";
      };
      these = {
        version = "1.2.1";
        hash = "0jqchlmycfcvkff48shhkswansnzrw57q8945m483mrd59zpg27k";
        repo = "hackage.haskell.org";
      };
      time-compat = {
        version = "1.9.8";
        hash = "0xnsjpcdjms1k72b7h51i37m7qkmlrx1pw4h866p23cj2gvkf717";
        repo = "hackage.haskell.org";
      };
      unordered-containers = {
        version = "0.2.21";
        hash = "0na84q5vxxww3pmz72ihpx4j7dhk71z28r55i7j0pq7mj27jasb0";
        repo = "hackage.haskell.org";
      };
      uuid-types = {
        version = "1.0.6";
        hash = "1i8cm1qyni59vb0q7hb36djskyhysbcm36cgsysarj6fp7hni1dz";
        repo = "hackage.haskell.org";
      };
      vector = {
        version = "0.13.2.0";
        hash = "0mgc7ikhdgqwsj5skdxsf6v3a1iqkiiysqj94qnbg40ff8nbai4x";
        repo = "hackage.haskell.org";
      };
      vector-algorithms = {
        version = "0.9.1.0";
        hash = "0924b5cif1fm861hl0jwysiv0w6szgpjrn1x90sfli4dvb32ys3c";
        repo = "hackage.haskell.org";
      };
      vector-binary-instances = {
        version = "0.2.5.2";
        hash = "0pmmr18l0bjgn5gzb1n7na1fhprnr4cy5q6975hllkk6lwkgmivg";
        repo = "hackage.haskell.org";
      };
      vector-stream = {
        version = "0.1.0.1";
        hash = "08hp43wx8gvbak4dffkj76zcirnmfmk9csca87fjik5w61ci9dyp";
        repo = "hackage.haskell.org";
      };
      vector-th-unbox = {
        version = "0.2.2";
        hash = "0agxmj1hprzmnz84b3vidrvhpk5wrxkljxgmlz1aaaxrp3284nqw";
        repo = "hackage.haskell.org";
      };
      witherable = {
        version = "0.5";
        hash = "0xm77dqyfm0zh0xvnh1srwxrkn4sl7m126lqhbzc4q9f6lziwzdx";
        repo = "hackage.haskell.org";
      };
    };
    lower = {
      OneTuple = {
        version = "0.3.1";
        hash = "0mb81j6zhvzq7h9yyhi9cszrq1g5d4lv3a8wpwimcvzbyg9bdd6p";
      };
      abstract-deque = {
        version = "0.3";
        hash = "19m3hha4nbxvlbxbpdnjary9g0wfpn3dwr8magxvsqi392krymsq";
      };
      abstract-par = {
        version = "0.3.3";
        hash = "0pxhbfn9jhz10dyhdp82phaa8nhry4qp6pk0a5z8s4zsg0cjki5v";
      };
      aeson = {
        version = "2.0.3.0";
        hash = "1yqw1glxv3lh5759f7vrn2bq8ih9k5m9j56b34a61dxx07b1x1jq";
      };
      ansi-terminal = {
        version = "0.11.5";
        hash = "0g7ycc2b67z8plqp7hva914yhwzjmvvhhf9mszlhj3kqxh6i732b";
      };
      ansi-wl-pprint = {
        version = "0.6.9";
        hash = "08akbbdra1sx36ff1la5k7rcxlz543i86qk4gyyxbxy636m9fhwv";
      };
      assoc = {
        version = "1.0.2";
        hash = "1sfc21z18sf8rpsbcr77kgw7qjpm5cm1d24n5ifsm2zid88v8fs9";
      };
      attoparsec = {
        version = "0.14.4";
        hash = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
      };
      barbies = {
        version = "2.0.5.0";
        hash = "14rqhblvmc4bylk1ry4y4hi47bkswp1slbgmamn6yj1dn1ng4awj";
      };
      base-compat = {
        version = "0.12.3";
        hash = "0vnns2imggv0b9gbbd9k0p8hdwlimka50gqbvknwkwbnv3kil7lb";
      };
      base-compat-batteries = {
        version = "0.12.3";
        hash = "0jg1wki5qbghjd5ra23ldc69jal9jjwrwp6wz8gg4gcrjlxbwg7m";
      };
      base-orphans = {
        version = "0.8.8.2";
        hash = "07j8v22qc18xsy6nh5nvic1z1pvp548sld67snd268jnnlh2kds1";
      };
      bifunctors = {
        version = "5.5.15";
        hash = "0qymwahcn7nqw3n9hvgh0nqhpm6p2ci1grmnwwfplvhxsaka91aj";
      };
      binary-orphans = {
        version = "1.0.5";
        hash = "0yv6h7zj61s04myidbqlq44vlcar63gshx6n1mhl180ffaij38yf";
      };
      bitvec = {
        version = "1.1.5.0";
        hash = "1ms8sy3dc2yjkxy4m5nam2wyv9rdni8npm4zx07j7k8mn3gw763a";
      };
      cassava = {
        version = "0.5.3.1";
        hash = "12dq5781j7zgyqlqmhlzg9c403gf34w3g929ck6v2h0s8ln11608";
      };
      cereal = {
        version = "0.5.8.3";
        hash = "0abpk83jb58ilxl44iglgzc7x4ld14sz5m1sccxraz2xa8s3d0jh";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
      };
      comonad = {
        version = "5.0.8";
        hash = "1wwn8z9f3flqlka2k51wqw8wsjcxbp8mwg6yp3vbn6akyjrn36gc";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
      };
      constraints = {
        version = "0.14.2";
        hash = "1nnlw9q7z2yvdaadyanvxqqwzb67kmk0n59xnc2pz0fhvqmq3yh8";
      };
      criterion = {
        version = "1.5.11.0";
        hash = "1aglz199r77cmig7sirp7nngi3qsf9dhvgnfk52g42hxfwcfmlrn";
      };
      criterion-measurement = {
        version = "0.1.4.0";
        hash = "086f7bkxln2xfx807rp0in1a9ac7amblwd43gbgn1r0g02w28j9f";
      };
      data-fix = {
        version = "0.3.3";
        hash = "16jcfmd4xiir72bmxpf130s5dg91yd2gpkjamwcaykckh3y746xp";
      };
      dense-linear-algebra = {
        version = "0.1.0.0";
        hash = "1xyyixkj0pxy4lxsk08kpwff25g5cqskn1l3jv3spnjxr5q1zhxd";
      };
      distributive = {
        version = "0.6.2.1";
        hash = "1yfw2p46wbs3mcvw22b7f7x1jyrfinslb1bdx83v1v17q95aldj7";
      };
      hedgehog = {
        version = "1.1";
        hash = "1c55194m9nfvpdf18babfsfjc3zdzdyiy8a7c3whb268ak36rssd";
      };
      incipit-base = {
        version = "0.5.0.0";
        hash = "02fdppamn00m94xqi4zhm6sl1ndg6lhn24m74w24pq84h44mynl6";
      };
      indexed-traversable = {
        version = "0.1.4";
        hash = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
      };
      indexed-traversable-instances = {
        version = "0.1.2";
        hash = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
      };
      lifted-async = {
        version = "0.10.2.5";
        hash = "1bd00yz0f7hlxf85i5hzq1dnlqgnhd99d5zvkxb4710w0hrc28rx";
      };
      lifted-base = {
        version = "0.2.3.12";
        hash = "074bfycdqnr78y05xvgmfgk09fsnjxykij68ryi4xbrx7qwzqgqm";
      };
      math-functions = {
        version = "0.3.4.4";
        hash = "01mi15cb6wqlizg3vl7x1a543f3adppmffwq65y8033y69hccv6y";
      };
      microstache = {
        version = "1.0.2.3";
        hash = "1xsnmlnarm7xxx55sg9pr6fcwffy4r8k2lhpzdxs8ixqpcwpvika";
      };
      monad-control = {
        version = "1.0.3.1";
        hash = "150lv32h8ywx09j1shl33qvx0w68ixdxnv6yah050a3d0gq8xzks";
      };
      monad-par = {
        version = "0.3.6";
        hash = "05ky66zn6v2z3i3ibgb9fxby8x1c4db0d456db2r1dxk3maps6wz";
      };
      monad-par-extras = {
        version = "0.3.3";
        hash = "1rni6fvg69msbynjrf8s8j9ldbz8gdjfqqvkfb00hb5nfs3fnmp0";
      };
      mwc-random = {
        version = "0.15.0.2";
        hash = "1mpill3lwrrhlzq0ccs8wyzsqhy1a2hmva17qxpgsy2zzqxi1nx1";
      };
      optparse-applicative = {
        version = "0.16.1.0";
        hash = "1jmaizbpksnaf89afz8yz3phnjmyrzch2r22ir8ydw22f6zd5srk";
      };
      primitive = {
        version = "0.7.4.0";
        hash = "0n7r8al9wgz4r7jzizapn1dbnkqxwx2c4lqkgfm5q5bxj8fl7g1c";
      };
      resourcet = {
        version = "1.2.6";
        hash = "0k96r6mx6zf0nr5y7xjzyhizx80svjfa3a47hcyys10y08rgqvln";
      };
      scientific = {
        version = "0.3.7.0";
        hash = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
      };
      semialign = {
        version = "1.2.0.1";
        hash = "0mpw54c3s0x70k5l52a57yhnmbgrksb3dn0vjq4m37spyzsfl1v2";
      };
      semigroupoids = {
        version = "5.3.7";
        hash = "0sknyh441xrna6w6d65j189n59najbp8h7g2ndr9qswxh7z2qaf1";
      };
      statistics = {
        version = "0.15.2.0";
        hash = "1sg1gv2sc8rdsl6qby6p80xv3iasy6w2khbkc6cx7j2iva67v33r";
      };
      strict = {
        version = "0.4.0.1";
        hash = "0xhr98m2632k2pic8q9bpnm3mp9098mmg4s66ds052b92494k49f";
      };
      tasty = {
        version = "1.4.0.3";
        hash = "1cnqrv0k5zkky01pssjy2zm72g73wvqn5c8hj05bq9i9khbbcgkd";
      };
      tasty-hedgehog = {
        version = "1.1.0.0";
        hash = "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
      };
      text-short = {
        version = "0.1.6";
        hash = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
      };
      th-abstraction = {
        version = "0.4.5.0";
        hash = "19nh7a9b4yif6sijp6xns6xlxcr1mcyrqx3cfbp5bdm7mkbda7a9";
      };
      these = {
        version = "1.1.1.1";
        hash = "1i1nfh41vflvqxi8w8n2s35ymx2z9119dg5zmd2r23ya7vwvaka1";
      };
      time-compat = {
        version = "1.9.6.1";
        hash = "0ika8xx9zff8rwaabs17q5c30c1b9ii89jhbvahi5nk7rs0cd5fs";
      };
      transformers-base = {
        version = "0.4.6";
        hash = "125mrxdarrfsl87pfa00mjw9lz6xcgib0wfjsqmsaya0kd4ikhlm";
      };
      unbounded-delays = {
        version = "0.1.1.1";
        hash = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
      };
      unordered-containers = {
        version = "0.2.20";
        hash = "0dvlf9by7mkwaxg2x26m6bf5bnqr1l07j6adksavvziiq0x3p135";
      };
      uuid-types = {
        version = "1.0.6";
        hash = "1i8cm1qyni59vb0q7hb36djskyhysbcm36cgsysarj6fp7hni1dz";
      };
      vector = {
        version = "0.13.1.0";
        hash = "0c1nw2sx14y29afdbwl40sk9vznx71rja5jcg14b8986778kl32d";
      };
      vector-algorithms = {
        version = "0.9.0.2";
        hash = "162dy1znvv3jxm4kccv0lmcb8bq5qzfjsqgd9879hmvv0ql3693h";
      };
      vector-binary-instances = {
        version = "0.2.5.2";
        hash = "0pmmr18l0bjgn5gzb1n7na1fhprnr4cy5q6975hllkk6lwkgmivg";
      };
      vector-th-unbox = {
        version = "0.2.2";
        hash = "0agxmj1hprzmnz84b3vidrvhpk5wrxkljxgmlz1aaaxrp3284nqw";
      };
      wcwidth = {
        version = "0.0.2";
        hash = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
      };
      witherable = {
        version = "0.4.2";
        hash = "1ga4al351kwcfvsdr1ngyzj4aypvl46w357jflmgxacad8iqx4ik";
      };
    };
  };
  solver = {
    latest = {};
  };
  resolving = false;
}
