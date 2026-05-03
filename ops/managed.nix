{
  bounds = {
    exon = {
      base = {
        lower = "4.17.2.1";
        upper = "4.23";
      };
      criterion = {
        lower = "1.5.13.0";
        upper = "1.7";
      };
      exon = {
        lower = null;
        upper = "1.8";
      };
      ghc = {
        lower = "9.4.8";
        upper = "9.15";
      };
      hedgehog = {
        lower = "1.1.2";
        upper = "1.8";
      };
      incipit-base = {
        lower = "0.5.0.0";
        upper = "0.8";
      };
      parsec = {
        lower = "3.1.15.1";
        upper = "3.2";
      };
      tasty = {
        lower = "1.2.2";
        upper = "1.6";
      };
      tasty-hedgehog = {
        lower = "1.3.0.0";
        upper = "1.5";
      };
      template-haskell = {
        lower = "2.19.0.0";
        upper = "2.25";
      };
    };
  };
  versions = {
    latest = {
      base = "4.22.0.0";
      criterion = "1.6.5.0";
      ghc = "9.14.1";
      hedgehog = "1.7";
      incipit-base = "0.7.0.1";
      parsec = "3.1.18.0";
      tasty = "1.5.4";
      tasty-hedgehog = "1.4.0.2";
      template-haskell = "2.24.0.0";
    };
    lower = {
      base = "4.17.2.1";
      criterion = "1.5.13.0";
      ghc = "9.4.8";
      hedgehog = "1.1.2";
      incipit-base = "0.5.0.0";
      parsec = "3.1.15.1";
      tasty = "1.2.2";
      tasty-hedgehog = "1.3.0.0";
      template-haskell = "2.19.0.0";
    };
  };
  initial = {
    latest = {};
    lower = {
      criterion = "1.6.0.0";
      hedgehog = "1.7";
      incipit-base = "0.7.0.1";
      parsec = "3.1.15.1";
      tasty = "1.5.2";
      tasty-hedgehog = "1.4.0.2";
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
      contravariant = {
        version = "1.5.5";
        hash = "0931bvc2iv3l29phnq8qsmmkicgz4yfk7c6hrqavs8d5c5j4zpj8";
        repo = "hackage.haskell.org";
      };
      criterion = {
        version = "1.6.5.0";
        hash = "1kpdawll7v47bdpxfrphjklw6ybz2zfvs90yb0pb111y4ypwar2x";
        repo = "hackage.haskell.org";
      };
      criterion-measurement = {
        version = "0.2.3.0";
        hash = "0759hlq6sh5rzmfdrb1hswpglh1m534zdp3hnyc5kfnyacnyyigw";
        repo = "hackage.haskell.org";
      };
      data-default-class = {
        version = "0.2.0.0";
        hash = "0msqv0riwngs5b3vcdrpakhm6m1nllhgyrv58wilh0w4iikclvwm";
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
      dlist = {
        version = "1.0";
        hash = "1lhckd8srlbjh17krqx0xkp10r9ipwc9lhlwrzxihkdwzsk0as0g";
        repo = "hackage.haskell.org";
      };
      generically = {
        version = "0.1.1";
        hash = "1658df4jbhzgpsqqgxp71bgry7ak5q0bjlrw6x551g54vvcydbxz";
        repo = "hackage.haskell.org";
      };
      happy = {
        version = "2.1.5";
        hash = "009gfg22ym8597zqlxpvyih36r8jr9l3hj01lbyfjiar86j85kmc";
        repo = "hackage.haskell.org";
      };
      happy-lib = {
        version = "2.1.5";
        hash = "1r70avvngv9smip563qh6hmivqirikg48f91jrp3q1al487b6daz";
        repo = "hackage.haskell.org";
      };
      hsc2hs = {
        version = "0.68.10";
        hash = "0wdg17kicnp6qbgynha216vihx7nnsglvhn5c089dqpa14hg35zw";
        repo = "hackage.haskell.org";
      };
      incipit-base = {
        version = "0.7.0.1";
        hash = "18qja8s9cs1h8z5yxccv5sjzpf32jgmvk7x1ywqybdkysj65zs7y";
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
        version = "1.5.4";
        hash = "0x6khif6n0rzfgkvrbiagg1sj0lwmjfr6qarjnjwmb9ywdk7598b";
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
      Glob = {
        version = "0.10.2";
        hash = "1v74ynmlz1qi8m5l7jkbyhjfmrjhklrzhjwh2lpfhrr285n1008l";
        repo = "hackage.haskell.org";
      };
      OneTuple = {
        version = "0.4.2.1";
        hash = "119jvqddcqk8j7c3mvrqsxp4xwy7n327ndi61c4r06bi4h3557aq";
        repo = "hackage.haskell.org";
      };
      Only = {
        version = "0.1";
        hash = "1a8a5sapa8jpciglsv98snx2khkn9hplh8rn41p47j9796gxb5jw";
        repo = "hackage.haskell.org";
      };
      QuickCheck = {
        version = "2.14.3";
        hash = "18451rdmih1jkrsrckdcix71zqihc4h2caic7qzizxjg4hqpapji";
        repo = "hackage.haskell.org";
      };
      StateVar = {
        version = "1.2.2";
        hash = "1grkv7sinn3wlk0xgwn4in5xxqmssrrfhp2hjxy9imhh8li40grf";
        repo = "hackage.haskell.org";
      };
      aeson = {
        version = "2.1.2.1";
        hash = "1f1f6h2r60ghz4p1ddi6wnq6z3i07j60sgm77hx2rvmncz4vizp0";
        repo = "hackage.haskell.org";
      };
      ansi-terminal = {
        version = "0.11.5";
        hash = "0g7ycc2b67z8plqp7hva914yhwzjmvvhhf9mszlhj3kqxh6i732b";
        repo = "hackage.haskell.org";
      };
      ansi-terminal-types = {
        version = "0.11.5";
        hash = "1xyq225ff8r0ymrhmr5fj3zk3qw87dqiz3makjyabn07dbqj3chq";
        repo = "hackage.haskell.org";
      };
      ansi-wl-pprint = {
        version = "0.6.9";
        hash = "08akbbdra1sx36ff1la5k7rcxlz543i86qk4gyyxbxy636m9fhwv";
        repo = "hackage.haskell.org";
      };
      assoc = {
        version = "1.1.1";
        hash = "0v4j6bn73dm3xnpkfdx0dg7q4vypl4k31pg35vycfp8w00jv6b6q";
        repo = "hackage.haskell.org";
      };
      async = {
        version = "2.2.6";
        hash = "1731pcifiskq6g1b72p34phx85l65ax7mbjw11310b3zwzk0ldyn";
        repo = "hackage.haskell.org";
      };
      attoparsec = {
        version = "0.14.4";
        hash = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
        repo = "hackage.haskell.org";
      };
      barbies = {
        version = "2.0.5.0";
        hash = "14rqhblvmc4bylk1ry4y4hi47bkswp1slbgmamn6yj1dn1ng4awj";
        repo = "hackage.haskell.org";
      };
      base-compat = {
        version = "0.12.3";
        hash = "0vnns2imggv0b9gbbd9k0p8hdwlimka50gqbvknwkwbnv3kil7lb";
        repo = "hackage.haskell.org";
      };
      base-compat-batteries = {
        version = "0.12.3";
        hash = "0jg1wki5qbghjd5ra23ldc69jal9jjwrwp6wz8gg4gcrjlxbwg7m";
        repo = "hackage.haskell.org";
      };
      bifunctors = {
        version = "5.6.3";
        hash = "0hvfzxbj181y61k14fvs5q2vjp1s7s1fay15q6kzvh1b38wg7y0l";
        repo = "hackage.haskell.org";
      };
      binary-orphans = {
        version = "1.0.5.1";
        hash = "0wazfiyyqagi6h9fmly67z7ji6rc08ynd57spa3g9s8wl6dpy0px";
        repo = "hackage.haskell.org";
      };
      bitvec = {
        version = "1.1.6.0";
        hash = "15rc25nlf8s6kxw7wfplma6znpc6sh2vmginyb5qdyhjidyzglpg";
        repo = "hackage.haskell.org";
      };
      cassava = {
        version = "0.5.4.1";
        hash = "0mkyhrwzqzf7c0hpzgsjgyplhgycdk58a80rdvzgpc0nhb9qg8mk";
        repo = "hackage.haskell.org";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
        repo = "hackage.haskell.org";
      };
      code-page = {
        version = "0.2.1";
        hash = "1g6adshrqhn21b61vxhjzjzxvw7m1ildrq4jaj02wmlg6p6yvcwn";
        repo = "hackage.haskell.org";
      };
      comonad = {
        version = "5.0.10";
        hash = "0534iqqc635c8h02h1r3pz90gf4mfqpx5zkv1wqm01vpybmkmpzw";
        repo = "hackage.haskell.org";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
        repo = "hackage.haskell.org";
      };
      constraints = {
        version = "0.14.4";
        hash = "00cjd15kn30qgq541s0g3sd2lnvrdswx3bkafk0bmrg9b0kdb6hg";
        repo = "hackage.haskell.org";
      };
      contravariant = {
        version = "1.5.6";
        hash = "02pdrv9f62pv096npxzxkarghyn7kqxvd8fwkz4vyhz4hffq3r15";
        repo = "hackage.haskell.org";
      };
      criterion = {
        version = "1.5.13.0";
        hash = "15dwck1lpx281vx3jgdpv9hg0m49anw0wwf28zz7pa8wkhc87wg3";
        repo = "hackage.haskell.org";
      };
      criterion-measurement = {
        version = "0.1.4.0";
        hash = "086f7bkxln2xfx807rp0in1a9ac7amblwd43gbgn1r0g02w28j9f";
        repo = "hackage.haskell.org";
      };
      data-default-class = {
        version = "0.2.0.0";
        hash = "0msqv0riwngs5b3vcdrpakhm6m1nllhgyrv58wilh0w4iikclvwm";
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
      dlist = {
        version = "1.0";
        hash = "1lhckd8srlbjh17krqx0xkp10r9ipwc9lhlwrzxihkdwzsk0as0g";
        repo = "hackage.haskell.org";
      };
      foldable1-classes-compat = {
        version = "0.1.3";
        hash = "0blfwkx9wbmzbli46y1wy5dvw57rmkskc3xbak5damw23wnggbl4";
        repo = "hackage.haskell.org";
      };
      generically = {
        version = "0.1.1";
        hash = "1658df4jbhzgpsqqgxp71bgry7ak5q0bjlrw6x551g54vvcydbxz";
        repo = "hackage.haskell.org";
      };
      hashable = {
        version = "1.4.4.0";
        hash = "0a8jcfmak3b130x5xim4d6qsqmfp8779wvq5va9irncn6827ihzi";
        repo = "hackage.haskell.org";
      };
      hedgehog = {
        version = "1.1.2";
        hash = "0zp9al4d4h3vf2h7cqf6zmvzpmjr7w69kcp7fmw97m9c7h7ggniv";
        repo = "hackage.haskell.org";
      };
      hsc2hs = {
        version = "0.68.10";
        hash = "0wdg17kicnp6qbgynha216vihx7nnsglvhn5c089dqpa14hg35zw";
        repo = "hackage.haskell.org";
      };
      incipit-base = {
        version = "0.5.0.0";
        hash = "02fdppamn00m94xqi4zhm6sl1ndg6lhn24m74w24pq84h44mynl6";
        repo = "hackage.haskell.org";
      };
      indexed-traversable = {
        version = "0.1.4";
        hash = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
        repo = "hackage.haskell.org";
      };
      indexed-traversable-instances = {
        version = "0.1.2.1";
        hash = "1issj9yfpxnshm6k7xq3wmmgrhn87cb0jalp0d1ls3zqx0qjrr03";
        repo = "hackage.haskell.org";
      };
      integer-logarithms = {
        version = "1.0.5";
        hash = "0wy204yf3axnc5hnsj22d3l69sbgv05dkll7s7nhkv5hik2k0mvx";
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
        version = "1.0.2.3";
        hash = "1xsnmlnarm7xxx55sg9pr6fcwffy4r8k2lhpzdxs8ixqpcwpvika";
        repo = "hackage.haskell.org";
      };
      mwc-random = {
        version = "0.15.3.0";
        hash = "03fj97z3qjbz11s2fl9x2i3fkna0kj19riglh4sdyv233ywr72yk";
        repo = "hackage.haskell.org";
      };
      optparse-applicative = {
        version = "0.17.1.0";
        hash = "0dydzzywb9laqp9bk846b8m2g7nbqmc733lrqsfmc9khnfhlk4fp";
        repo = "hackage.haskell.org";
      };
      os-string = {
        version = "2.0.8";
        hash = "1i3qmgqa2wyri8fyyhw2z6jfwrapd5x41gr29dmcn6ikfixaf9z5";
        repo = "hackage.haskell.org";
        revision = true;
      };
      parallel = {
        version = "3.3.0.0";
        hash = "1pcaz12k48m5wcnl2vifkxg8miadridfzbn2l6a0mhfgnwjwk6pd";
        repo = "hackage.haskell.org";
      };
      parsec = {
        version = "3.1.15.1";
        hash = "0yyg0hppwi86a0iqcca3x76f6f1j1bm3pf3gms6pcc7ayml7mvhb";
        repo = "hackage.haskell.org";
      };
      primitive = {
        version = "0.7.4.0";
        hash = "0n7r8al9wgz4r7jzizapn1dbnkqxwx2c4lqkgfm5q5bxj8fl7g1c";
        repo = "hackage.haskell.org";
      };
      resourcet = {
        version = "1.2.6";
        hash = "0k96r6mx6zf0nr5y7xjzyhizx80svjfa3a47hcyys10y08rgqvln";
        repo = "hackage.haskell.org";
      };
      scientific = {
        version = "0.3.7.0";
        hash = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
        repo = "hackage.haskell.org";
      };
      semialign = {
        version = "1.3.1.1";
        hash = "17sfq3kzzdh28vin3kxw6l73jnrawf45cb4rhkcvajhsa9wkwsgv";
        repo = "hackage.haskell.org";
      };
      semigroupoids = {
        version = "6.0.2";
        hash = "0nc2c573inxnp4nz3pbahb66ca9750zdgashwnak7kxyrq7d763l";
        repo = "hackage.haskell.org";
      };
      statistics = {
        version = "0.16.5.0";
        hash = "0hh6mi9h7kvsh0balhlf9nj36y4j9axanmq6gi6yfizzp6iag494";
        repo = "hackage.haskell.org";
      };
      strict = {
        version = "0.5";
        hash = "02iyvrr7nd7fnivz78lzdchy8zw1cghqj1qx2yzbbb9869h1mny7";
        repo = "hackage.haskell.org";
      };
      tasty = {
        version = "1.2.2";
        hash = "07vyy71nxl7q00akjcghsqd1lz9yf7lfr9kicr2q4ydfj9xkv8bw";
        repo = "hackage.haskell.org";
      };
      tasty-hedgehog = {
        version = "1.3.0.0";
        hash = "17q94i4rwdp1bc2wg5r8pblp8i74ivhc4nqih4w5ncmvhws0syix";
        repo = "hackage.haskell.org";
      };
      text-short = {
        version = "0.1.6.1";
        hash = "1yzyzklry9cdc12283b0zf0kpa8nb7gixmdaf3l8x7388zpxhhay";
        repo = "hackage.haskell.org";
      };
      th-abstraction = {
        version = "0.5.0.0";
        hash = "0dkilfrvk8zdn3gvyfv5zgjbwqhdf1yg90fk4byka0ib43kgkyvf";
        repo = "hackage.haskell.org";
      };
      these = {
        version = "1.2.1";
        hash = "0jqchlmycfcvkff48shhkswansnzrw57q8945m483mrd59zpg27k";
        repo = "hackage.haskell.org";
      };
      time-compat = {
        version = "1.9.9";
        hash = "02yq6qc9fbawpxkypaf4nm9vidfv5vvgidxyj4r3dxa4lb29jd2p";
        repo = "hackage.haskell.org";
      };
      unbounded-delays = {
        version = "0.1.1.1";
        hash = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
        repo = "hackage.haskell.org";
      };
      unordered-containers = {
        version = "0.2.21";
        hash = "0na84q5vxxww3pmz72ihpx4j7dhk71z28r55i7j0pq7mj27jasb0";
        repo = "hackage.haskell.org";
      };
      uuid-types = {
        version = "1.0.6.1";
        hash = "1jrid43smmfcchrfwpzkxil16a4c5016y4b49yjka0sildj1lprg";
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
      wcwidth = {
        version = "0.0.2";
        hash = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
        repo = "hackage.haskell.org";
      };
      witherable = {
        version = "0.4.2";
        hash = "1ga4al351kwcfvsdr1ngyzj4aypvl46w357jflmgxacad8iqx4ik";
        repo = "hackage.haskell.org";
      };
    };
  };
  solver = {
    latest = {
      incipit-base = {
        jailbreak = true;
      };
    };
    lower = {};
  };
  packages = {
    exon = {
      version = "1.7.3.0";
    };
  };
  resolving = false;
}
