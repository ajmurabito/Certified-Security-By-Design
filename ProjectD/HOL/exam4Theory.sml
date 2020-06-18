structure exam4Theory :> exam4Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading exam4Theory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open aclDrulesTheory
  in end;
  val _ = Theory.link_parents
          ("exam4",
          Arbnum.fromString "1585283291",
          Arbnum.fromString "933507")
          [("aclDrules",
           Arbnum.fromString "1534466515",
           Arbnum.fromString "648647")];
  val _ = Theory.incorporate_types "exam4"
       [("serviceKey", 0), ("servers", 0), ("props", 0), ("princs", 0),
        ("people", 0), ("keys", 0), ("access", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("exam4", "access"), ID("min", "fun"), ID("num", "num"),
   ID("exam4", "serviceKey"), ID("exam4", "keys"), ID("exam4", "servers"),
   ID("exam4", "props"), ID("exam4", "people"), ID("exam4", "princs"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("exam4", "AC"), ID("bool", "ARB"),
   ID("exam4", "AS"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("bool", "COND"), ID("ind_type", "CONSTR"),
   ID("bool", "DATATYPE"), ID("exam4", "FS"), ID("exam4", "K"),
   ID("exam4", "KFS"), ID("exam4", "KTGS"), ID("exam4", "KU"),
   ID("exam4", "KUFS"), ID("exam4", "KUTGS"), ID("exam4", "Key"),
   ID("arithmetic", "NUMERAL"), ID("aclfoundation", "Name"),
   ID("aclfoundation", "Princ"), ID("exam4", "PK"), ID("exam4", "PR"),
   ID("exam4", "SERV"), ID("num", "SUC"), ID("exam4", "TGS"),
   ID("bool", "TYPE_DEFINITION"), ID("exam4", "USE"),
   ID("exam4", "Ursala"), ID("exam4", "User"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("exam4", "access2num"),
   ID("exam4", "access_CASE"), ID("exam4", "access_size"),
   ID("aclfoundation", "andf"), ID("aclfoundation", "Form"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "impf"),
   ID("exam4", "keys2num"), ID("exam4", "keys_CASE"),
   ID("exam4", "keys_size"), ID("exam4", "num2access"),
   ID("exam4", "num2keys"), ID("exam4", "num2people"),
   ID("exam4", "num2servers"), ID("exam4", "people2num"),
   ID("exam4", "people_CASE"), ID("exam4", "people_size"),
   ID("exam4", "princs_CASE"), ID("exam4", "princs_size"),
   ID("exam4", "print"), ID("aclfoundation", "prop"),
   ID("exam4", "props_CASE"), ID("exam4", "props_size"),
   ID("exam4", "read"), ID("aclrules", "sat"), ID("aclfoundation", "says"),
   ID("exam4", "servers2num"), ID("exam4", "servers_CASE"),
   ID("exam4", "servers_size"), ID("exam4", "serviceKey_CASE"),
   ID("exam4", "serviceKey_size"), ID("aclfoundation", "speaks_for"),
   ID("exam4", "write"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2], TYOP [3], TYOP [1, 2, 1], TYV "'a", TYOP [4],
   TYOP [1, 5, 4], TYOP [1, 6, 4], TYOP [5], TYOP [1, 8, 4],
   TYOP [1, 9, 7], TYOP [1, 2, 10], TYOP [1, 8, 1], TYOP [1, 4, 4],
   TYOP [1, 4, 13], TYOP [1, 4, 14], TYOP [1, 8, 15], TYOP [6],
   TYOP [1, 17, 1], TYOP [1, 0, 4], TYOP [1, 19, 4], TYOP [7],
   TYOP [1, 21, 6], TYOP [1, 22, 20], TYOP [1, 2, 4], TYOP [1, 24, 23],
   TYOP [1, 17, 25], TYOP [8], TYOP [1, 27, 1], TYOP [1, 21, 4],
   TYOP [1, 29, 7], TYOP [1, 9, 30], TYOP [1, 27, 31], TYOP [1, 21, 1],
   TYOP [1, 21, 13], TYOP [1, 1, 8], TYOP [1, 1, 21], TYOP [1, 1, 5],
   TYOP [1, 1, 0], TYOP [1, 5, 1], TYOP [1, 4, 15], TYOP [1, 4, 40],
   TYOP [1, 5, 41], TYOP [1, 0, 1], TYOP [1, 0, 15], TYOP [1, 21, 27],
   TYOP [1, 2, 17], TYOP [1, 8, 2], TYOP [1, 8, 27], TYOP [1, 5, 17],
   TYOP [1, 21, 49], TYOP [1, 5, 27], TYOP [1, 5, 2], TYOP [1, 0, 17],
   TYOP [9], TYOP [11, 21, 5], TYOP [11, 8, 55], TYOP [10, 56],
   TYOP [1, 57, 54], TYOP [11, 5, 0], TYOP [11, 21, 59], TYOP [11, 2, 60],
   TYOP [10, 61], TYOP [1, 62, 54], TYOP [11, 8, 5], TYOP [10, 64],
   TYOP [1, 65, 54], TYV "'e", TYV "'d", TYV "'b",
   TYOP [12, 17, 69, 27, 68, 67], TYOP [13, 68], TYOP [13, 67],
   TYOP [1, 0, 54], TYOP [1, 5, 54], TYOP [1, 21, 54], TYOP [1, 27, 54],
   TYOP [1, 17, 54], TYOP [1, 8, 54], TYOP [1, 2, 54], TYOP [1, 0, 73],
   TYOP [1, 0, 80], TYOP [1, 27, 4], TYOP [1, 17, 4], TYOP [1, 5, 74],
   TYOP [1, 5, 84], TYOP [1, 5, 85], TYOP [1, 5, 86], TYOP [1, 51, 54],
   TYOP [1, 45, 88], TYOP [1, 48, 89], TYOP [1, 53, 54], TYOP [1, 50, 91],
   TYOP [1, 46, 92], TYOP [1, 27, 57], TYOP [1, 17, 62], TYOP [1, 2, 65],
   TYOP [1, 8, 78], TYOP [1, 8, 97], TYOP [1, 52, 54], TYOP [1, 47, 99],
   TYOP [1, 4, 54], TYOP [1, 101, 54], TYOP [1, 73, 54], TYOP [1, 19, 54],
   TYOP [1, 104, 54], TYOP [1, 103, 54], TYOP [1, 6, 54],
   TYOP [1, 107, 54], TYOP [1, 74, 54], TYOP [1, 109, 54],
   TYOP [1, 29, 54], TYOP [1, 111, 54], TYOP [1, 75, 54],
   TYOP [1, 113, 54], TYOP [1, 22, 54], TYOP [1, 115, 54],
   TYOP [1, 76, 54], TYOP [1, 117, 54], TYOP [1, 77, 54],
   TYOP [1, 119, 54], TYOP [1, 66, 54], TYOP [1, 121, 54],
   TYOP [1, 58, 54], TYOP [1, 123, 54], TYOP [1, 63, 54],
   TYOP [1, 125, 54], TYOP [1, 9, 54], TYOP [1, 127, 54], TYOP [1, 78, 54],
   TYOP [1, 129, 54], TYOP [1, 24, 54], TYOP [1, 131, 54],
   TYOP [1, 79, 54], TYOP [1, 133, 54], TYOP [1, 1, 54], TYOP [1, 135, 54],
   TYOP [1, 1, 1], TYOP [1, 1, 137], TYOP [11, 71, 72], TYOP [11, 70, 139],
   TYOP [1, 139, 140], TYOP [1, 70, 141], TYOP [1, 0, 59],
   TYOP [1, 5, 143], TYOP [1, 5, 55], TYOP [1, 21, 145], TYOP [1, 59, 60],
   TYOP [1, 21, 147], TYOP [1, 72, 139], TYOP [1, 71, 149],
   TYOP [1, 5, 64], TYOP [1, 8, 151], TYOP [1, 55, 56], TYOP [1, 8, 153],
   TYOP [1, 60, 61], TYOP [1, 2, 155], TYOP [1, 54, 54], TYOP [1, 54, 157],
   TYOP [1, 1, 135], TYOP [1, 4, 101], TYOP [1, 21, 75], TYOP [1, 27, 76],
   TYOP [1, 17, 77], TYOP [1, 65, 66], TYOP [1, 57, 58], TYOP [1, 62, 63],
   TYOP [1, 2, 79], TYOP [1, 43, 54], TYOP [1, 168, 54], TYOP [1, 39, 54],
   TYOP [1, 170, 54], TYOP [1, 33, 54], TYOP [1, 172, 54],
   TYOP [1, 82, 54], TYOP [1, 174, 54], TYOP [1, 94, 54],
   TYOP [1, 176, 54], TYOP [1, 83, 54], TYOP [1, 178, 54],
   TYOP [1, 95, 54], TYOP [1, 180, 54], TYOP [1, 12, 54],
   TYOP [1, 182, 54], TYOP [1, 96, 54], TYOP [1, 184, 54],
   TYOP [1, 54, 14], TYOP [1, 1, 65], TYOP [1, 187, 65], TYOP [1, 64, 188],
   TYOP [1, 1, 189], TYOP [1, 1, 57], TYOP [1, 191, 57], TYOP [1, 56, 192],
   TYOP [1, 1, 193], TYOP [1, 1, 62], TYOP [1, 195, 62], TYOP [1, 61, 196],
   TYOP [1, 1, 197], TYOP [42, 27], TYOP [1, 27, 199], TYOP [1, 135, 168],
   TYOP [1, 135, 170], TYOP [1, 135, 172], TYOP [1, 135, 182],
   TYOP [1, 66, 184], TYOP [1, 58, 176], TYOP [1, 63, 180],
   TYOP [58, 17, 27, 68, 67], TYOP [1, 208, 208], TYOP [1, 208, 209],
   TYOP [1, 199, 209], TYOP [1, 17, 208], TYOP [1, 208, 54],
   TYOP [1, 140, 213], TYOP [1, 199, 208], TYOP [1, 199, 215]]
  end
  val _ = Theory.incorporate_consts "exam4" tyvector
     [("write", 0), ("serviceKey_size", 3), ("serviceKey_CASE", 11),
      ("servers_size", 12), ("servers_CASE", 16), ("servers2num", 12),
      ("read", 0), ("props_size", 18), ("props_CASE", 26), ("print", 0),
      ("princs_size", 28), ("princs_CASE", 32), ("people_size", 33),
      ("people_CASE", 34), ("people2num", 33), ("num2servers", 35),
      ("num2people", 36), ("num2keys", 37), ("num2access", 38),
      ("keys_size", 39), ("keys_CASE", 42), ("keys2num", 39),
      ("access_size", 43), ("access_CASE", 44), ("access2num", 43),
      ("User", 45), ("Ursala", 21), ("USE", 46), ("TGS", 8), ("SERV", 47),
      ("PR", 48), ("PK", 50), ("Key", 51), ("KUTGS", 5), ("KUFS", 5),
      ("KU", 5), ("KTGS", 5), ("KFS", 5), ("K", 52), ("FS", 8), ("AS", 8),
      ("AC", 53)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'princs'", 58), TMV("'props'", 63), TMV("'serviceKey'", 66),
   TMV("M", 70), TMV("M", 0), TMV("M", 5), TMV("M", 21), TMV("M", 27),
   TMV("M", 17), TMV("M", 8), TMV("M", 2), TMV("M'", 0), TMV("M'", 5),
   TMV("M'", 21), TMV("M'", 27), TMV("M'", 17), TMV("M'", 8), TMV("M'", 2),
   TMV("Oi", 71), TMV("Os", 72), TMV("P", 73), TMV("P", 74), TMV("P", 75),
   TMV("P", 76), TMV("P", 77), TMV("P", 78), TMV("P", 79), TMV("a", 0),
   TMV("a", 5), TMV("a", 21), TMV("a", 8), TMV("a", 2), TMV("a'", 0),
   TMV("a'", 5), TMV("a'", 21), TMV("a'", 8), TMV("a'", 2), TMV("a0", 21),
   TMV("a0", 65), TMV("a0", 57), TMV("a0'", 21), TMV("a0'", 62),
   TMV("a1", 5), TMV("a1'", 5), TMV("access", 81), TMV("f", 19),
   TMV("f", 6), TMV("f", 29), TMV("f", 9), TMV("f", 24), TMV("f'", 9),
   TMV("f'", 24), TMV("f0", 9), TMV("f0", 24), TMV("f1", 6), TMV("f1", 29),
   TMV("f1", 22), TMV("f1'", 6), TMV("f1'", 29), TMV("f1'", 22),
   TMV("f2", 19), TMV("f2", 6), TMV("f2'", 19), TMV("f2'", 6),
   TMV("fn", 82), TMV("fn", 83), TMV("fn", 24), TMV("k", 5),
   TMV("keys", 87), TMV("m", 1), TMV("n", 1), TMV("p", 21), TMV("p", 27),
   TMV("p", 17), TMV("people", 75), TMV("pp", 27), TMV("pp", 17),
   TMV("princs", 90), TMV("props", 93), TMV("r", 1), TMV("r'", 1),
   TMV("rep", 43), TMV("rep", 39), TMV("rep", 33), TMV("rep", 94),
   TMV("rep", 95), TMV("rep", 12), TMV("rep", 96), TMV("s", 8),
   TMV("s", 2), TMV("servers", 98), TMV("serviceKey", 100), TMV("ss", 2),
   TMV("v0", 4), TMV("v0'", 4), TMV("v1", 4), TMV("v1'", 4), TMV("v2", 4),
   TMV("v2'", 4), TMV("v3", 4), TMV("v3'", 4), TMV("v4", 4), TMV("v4'", 4),
   TMV("x", 0), TMV("x", 5), TMV("x", 21), TMV("x", 8), TMV("x0", 4),
   TMV("x1", 4), TMV("x2", 4), TMV("x3", 4), TMV("x4", 4), TMC(14, 102),
   TMC(14, 103), TMC(14, 105), TMC(14, 106), TMC(14, 108), TMC(14, 110),
   TMC(14, 112), TMC(14, 114), TMC(14, 116), TMC(14, 118), TMC(14, 120),
   TMC(14, 122), TMC(14, 124), TMC(14, 126), TMC(14, 128), TMC(14, 130),
   TMC(14, 132), TMC(14, 134), TMC(14, 109), TMC(14, 136), TMC(14, 113),
   TMC(14, 117), TMC(14, 119), TMC(14, 121), TMC(14, 123), TMC(14, 125),
   TMC(14, 129), TMC(14, 133), TMC(15, 138), TMC(16, 142), TMC(16, 144),
   TMC(16, 146), TMC(16, 148), TMC(16, 150), TMC(16, 152), TMC(16, 154),
   TMC(16, 156), TMC(17, 158), TMC(18, 1), TMC(19, 159), TMC(20, 160),
   TMC(20, 80), TMC(20, 158), TMC(20, 84), TMC(20, 159), TMC(20, 161),
   TMC(20, 162), TMC(20, 163), TMC(20, 164), TMC(20, 165), TMC(20, 166),
   TMC(20, 97), TMC(20, 167), TMC(21, 158), TMC(22, 103), TMC(22, 105),
   TMC(22, 169), TMC(22, 108), TMC(22, 171), TMC(22, 112), TMC(22, 173),
   TMC(22, 175), TMC(22, 177), TMC(22, 179), TMC(22, 181), TMC(22, 128),
   TMC(22, 183), TMC(22, 132), TMC(22, 185), TMC(22, 109), TMC(22, 136),
   TMC(22, 113), TMC(22, 129), TMC(22, 133), TMC(23, 53), TMC(24, 0),
   TMC(24, 5), TMC(24, 21), TMC(24, 8), TMC(24, 2), TMC(25, 8),
   TMC(26, 137), TMC(27, 137), TMC(28, 65), TMC(28, 57), TMC(28, 62),
   TMC(29, 186), TMC(30, 190), TMC(30, 194), TMC(30, 198), TMC(31, 157),
   TMC(32, 8), TMC(33, 52), TMC(34, 5), TMC(35, 5), TMC(36, 5), TMC(37, 5),
   TMC(38, 5), TMC(39, 51), TMC(40, 137), TMC(41, 200), TMC(43, 50),
   TMC(44, 48), TMC(45, 47), TMC(46, 137), TMC(47, 8), TMC(48, 201),
   TMC(48, 202), TMC(48, 203), TMC(48, 204), TMC(48, 205), TMC(48, 206),
   TMC(48, 207), TMC(49, 46), TMC(50, 21), TMC(51, 45), TMC(52, 1),
   TMC(53, 158), TMC(54, 43), TMC(55, 44), TMC(56, 43), TMC(57, 210),
   TMC(59, 211), TMC(60, 210), TMC(61, 39), TMC(62, 42), TMC(63, 39),
   TMC(64, 38), TMC(65, 37), TMC(66, 36), TMC(67, 35), TMC(68, 33),
   TMC(69, 34), TMC(70, 33), TMC(71, 32), TMC(72, 28), TMC(73, 0),
   TMC(74, 212), TMC(75, 26), TMC(76, 18), TMC(77, 0), TMC(78, 214),
   TMC(79, 211), TMC(80, 12), TMC(81, 16), TMC(82, 12), TMC(83, 11),
   TMC(84, 3), TMC(85, 216), TMC(86, 0), TMC(87, 157)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op servers_TY_DEF x = x
    val op servers_TY_DEF =
    ThmBind.DT(((("exam4",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%178%86%221%70%151$0@%211%193%193%228@4|@$0@|@"])
  fun op servers_BIJ x = x
    val op servers_BIJ =
    ThmBind.DT(((("exam4",1),[("bool",[116]),("exam4",[0])]),["DISK_THM"]),
               [ThmBind.read"%149%138%30%163%242%255$0@3$0@|@2%131%79%154%70%151$0@%211%193%193%228@4|$0@2%156%255%242$0@3$0@2|@2"])



  fun op servers_size_def x = x
    val op servers_size_def =
    ThmBind.DT(((("exam4",14),[]),[]),
               [ThmBind.read"%138%106%156%257$0@2%150@|@"])
  fun op servers_CASE x = x
    val op servers_CASE =
    ThmBind.DT(((("exam4",15),[]),[]),
               [ThmBind.read"%138%106%112%93%112%95%112%97%152%256$3@$2@$1@$0@2%69%198%151$0@%211%193%228@4$3@%198%156$0@%211%193%228@4$2@$1@2|%255$3@3|@|@|@|@"])
  fun op people_TY_DEF x = x
    val op people_TY_DEF =
    ThmBind.DT(((("exam4",23),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%172%83%220%70%151$0@%211%193%228@3|@$0@|@"])
  fun op people_BIJ x = x
    val op people_BIJ =
    ThmBind.DT(((("exam4",24),
                [("bool",[116]),("exam4",[23])]),["DISK_THM"]),
               [ThmBind.read"%149%132%29%157%241%243$0@3$0@|@2%131%79%154%70%151$0@%211%193%228@3|$0@2%156%243%241$0@3$0@2|@2"])

  fun op people_size_def x = x
    val op people_size_def =
    ThmBind.DT(((("exam4",35),[]),[]),
               [ThmBind.read"%132%105%156%245$0@2%150@|@"])
  fun op people_CASE x = x
    val op people_CASE =
    ThmBind.DT(((("exam4",36),[]),[]),
               [ThmBind.read"%132%105%112%93%152%244$1@$0@2%69$1|%243$1@3|@|@"])
  fun op keys_TY_DEF x = x
    val op keys_TY_DEF =
    ThmBind.DT(((("exam4",43),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%170%82%219%70%151$0@%211%193%194%228@4|@$0@|@"])
  fun op keys_BIJ x = x
    val op keys_BIJ =
    ThmBind.DT(((("exam4",44),
                [("bool",[116]),("exam4",[43])]),["DISK_THM"]),
               [ThmBind.read"%149%130%28%155%240%236$0@3$0@|@2%131%79%154%70%151$0@%211%193%194%228@4|$0@2%156%236%240$0@3$0@2|@2"])





  fun op keys_size_def x = x
    val op keys_size_def =
    ThmBind.DT(((("exam4",59),[]),[]),
               [ThmBind.read"%130%104%156%238$0@2%150@|@"])
  fun op keys_CASE x = x
    val op keys_CASE =
    ThmBind.DT(((("exam4",60),[]),[]),
               [ThmBind.read"%130%104%112%93%112%95%112%97%112%99%112%101%152%237$5@$4@$3@$2@$1@$0@2%69%198%151$0@%211%194%228@4%198%156$0@%150@2$5@$4@2%198%151$0@%211%193%193%228@5$3@%198%156$0@%211%193%193%228@5$2@$1@3|%236$5@3|@|@|@|@|@|@"])
  fun op princs_TY_DEF x = x
    val op princs_TY_DEF =
    ThmBind.DT(((("exam4",68),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%174%84%223%39%124%0%165%136%39%165%229%184%30%161$1@%30%200%150@%147$0@%143%189@%188@3%70%196|@|$0@2|@2%229%183%29%161$1@%29%200%216%150@2%147%190@%143$0@%188@3%70%196|@|$0@2|@2%181%28%161$1@%28%200%216%216%150@3%147%190@%143%189@$0@3%70%196|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op princs_case_def x = x
    val op princs_case_def =
    ThmBind.DT(((("exam4",76),
                [("bool",[26,180]),("exam4",[69,70,71,72,73,74,75]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%138%30%126%48%118%55%116%61%152%246%214$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%149%132%29%126%48%118%55%116%61%152%246%227$3@2$2@$1@$0@2$1$3@2|@|@|@|@2%130%28%126%48%118%55%116%61%152%246%210$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op princs_size_def x = x
    val op princs_size_def =
    ThmBind.DT(((("exam4",77),
                [("bool",[26,180]),("exam4",[69,70,71,72,73,74,75]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%138%30%156%247%214$0@3%140%211%193%228@3%257$0@3|@2%149%132%29%156%247%227$0@3%140%211%193%228@3%245$0@3|@2%130%28%156%247%210$0@3%140%211%193%228@3%238$0@3|@3"])
  fun op access_TY_DEF x = x
    val op access_TY_DEF =
    ThmBind.DT(((("exam4",85),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%168%81%218%70%151$0@%211%193%193%228@4|@$0@|@"])
  fun op access_BIJ x = x
    val op access_BIJ =
    ThmBind.DT(((("exam4",86),
                [("bool",[116]),("exam4",[85])]),["DISK_THM"]),
               [ThmBind.read"%149%113%27%153%239%230$0@3$0@|@2%131%79%154%70%151$0@%211%193%193%228@4|$0@2%156%230%239$0@3$0@2|@2"])



  fun op access_size_def x = x
    val op access_size_def =
    ThmBind.DT(((("exam4",99),[]),[]),
               [ThmBind.read"%113%103%156%232$0@2%150@|@"])
  fun op access_CASE x = x
    val op access_CASE =
    ThmBind.DT(((("exam4",100),[]),[]),
               [ThmBind.read"%113%103%112%93%112%95%112%97%152%231$3@$2@$1@$0@2%69%198%151$0@%211%193%228@4$3@%198%156$0@%211%193%228@4$2@$1@2|%230$3@3|@|@|@|@"])
  fun op serviceKey_TY_DEF x = x
    val op serviceKey_TY_DEF =
    ThmBind.DT(((("exam4",108),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%180%87%222%38%123%2%165%135%38%165%229%184%30%160$1@%30%199%150@%146$0@%188@2%70%195|@|$0@2|@2%181%28%160$1@%28%199%216%150@2%146%190@$0@2%70%195|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op serviceKey_case_def x = x
    val op serviceKey_case_def =
    ThmBind.DT(((("exam4",114),
                [("bool",[26,180]),("exam4",[109,110,111,112,113]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%138%30%126%48%116%54%152%258%215$2@2$1@$0@2$1$2@2|@|@|@2%130%28%126%48%116%54%152%258%204$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op serviceKey_size_def x = x
    val op serviceKey_size_def =
    ThmBind.DT(((("exam4",115),
                [("bool",[26,180]),("exam4",[109,110,111,112,113]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%138%30%156%259%215$0@3%140%211%193%228@3%257$0@3|@2%130%28%156%259%204$0@3%140%211%193%228@3%238$0@3|@2"])
  fun op props_TY_DEF x = x
    val op props_TY_DEF =
    ThmBind.DT(((("exam4",123),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%176%85%224%41%125%1%165%137%41%165%229%185%31%162$1@%31%201%150@%148$0@%144%189@%142%188@%187@4%70%197|@|$0@2|@2%229%183%37%181%42%162$2@%37%42%201%216%150@2%148%191@%144$1@%142$0@%187@4%70%197|@||$1@$0@2|@|@2%166%27%162$1@%27%201%216%216%150@3%148%191@%144%189@%142%188@$0@4%70%197|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op props_case_def x = x
    val op props_case_def =
    ThmBind.DT(((("exam4",131),
                [("bool",[26,180]),("exam4",[124,125,126,127,128,129,130]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%139%31%128%49%120%56%114%60%152%250%225$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%149%132%37%130%42%128%49%120%56%114%60%152%250%213$4@$3@2$2@$1@$0@2$1$4@$3@2|@|@|@|@|@2%113%27%128%49%120%56%114%60%152%250%186$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op props_size_def x = x
    val op props_size_def =
    ThmBind.DT(((("exam4",132),
                [("bool",[26,180]),("exam4",[124,125,126,127,128,129,130]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%139%31%156%251%225$0@3%140%211%193%228@3%259$0@3|@2%149%132%37%130%42%156%251%213$1@$0@3%140%211%193%228@3%140%245$1@2%238$0@4|@|@2%113%27%156%251%186$0@3%140%211%193%228@3%232$0@3|@3"])
  fun op num2servers_servers2num x = x
    val op num2servers_servers2num =
    ThmBind.DT(((("exam4",2),[("exam4",[1])]),["DISK_THM"]),
               [ThmBind.read"%138%30%163%242%255$0@3$0@|@"])
  fun op servers2num_num2servers x = x
    val op servers2num_num2servers =
    ThmBind.DT(((("exam4",3),[("exam4",[1])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%193%228@5%156%255%242$0@3$0@2|@"])
  fun op num2servers_11 x = x
    val op num2servers_11 =
    ThmBind.DT(((("exam4",4),[("bool",[26]),("exam4",[1])]),["DISK_THM"]),
               [ThmBind.read"%131%79%131%80%165%151$1@%211%193%193%228@5%165%151$0@%211%193%193%228@5%154%163%242$1@2%242$0@3%156$1@$0@4|@|@"])
  fun op servers2num_11 x = x
    val op servers2num_11 =
    ThmBind.DT(((("exam4",5),[("bool",[26]),("exam4",[1])]),["DISK_THM"]),
               [ThmBind.read"%138%30%138%35%154%156%255$1@2%255$0@3%163$1@$0@2|@|@"])
  fun op num2servers_ONTO x = x
    val op num2servers_ONTO =
    ThmBind.DT(((("exam4",6),
                [("bool",[25,62]),("exam4",[1])]),["DISK_THM"]),
               [ThmBind.read"%138%30%182%79%149%163$1@%242$0@3%151$0@%211%193%193%228@5|@|@"])
  fun op servers2num_ONTO x = x
    val op servers2num_ONTO =
    ThmBind.DT(((("exam4",7),[("bool",[26]),("exam4",[1])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%193%228@5%184%30%156$1@%255$0@2|@2|@"])
  fun op num2servers_thm x = x
    val op num2servers_thm =
    ThmBind.DT(((("exam4",11),[("exam4",[8,9,10])]),[]),
               [ThmBind.read"%149%163%242%150@2%192@2%149%163%242%211%193%228@4%217@2%163%242%211%194%228@4%203@3"])
  fun op servers2num_thm x = x
    val op servers2num_thm =
    ThmBind.DT(((("exam4",12),
                [("bool",[25]),("exam4",[3,8,9,10]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%149%156%255%192@2%150@2%149%156%255%217@2%211%193%228@4%156%255%203@2%211%194%228@5"])
  fun op servers_EQ_servers x = x
    val op servers_EQ_servers =
    ThmBind.DT(((("exam4",13),[("bool",[57]),("exam4",[5])]),["DISK_THM"]),
               [ThmBind.read"%138%30%138%35%154%163$1@$0@2%156%255$1@2%255$0@3|@|@"])
  fun op servers_case_def x = x
    val op servers_case_def =
    ThmBind.DT(((("exam4",16),
                [("bool",[55,63]),("exam4",[12,15]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%149%112%93%112%95%112%97%152%256%192@$2@$1@$0@2$2@|@|@|@2%149%112%93%112%95%112%97%152%256%217@$2@$1@$0@2$1@|@|@|@2%112%93%112%95%112%97%152%256%203@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_servers x = x
    val op datatype_servers =
    ThmBind.DT(((("exam4",17),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%202%90%192@%217@%203@2"])
  fun op servers_distinct x = x
    val op servers_distinct =
    ThmBind.DT(((("exam4",18),
                [("exam4",[12,13]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%149%262%163%192@%217@3%149%262%163%192@%203@3%262%163%217@%203@4"])
  fun op servers_case_cong x = x
    val op servers_case_cong =
    ThmBind.DT(((("exam4",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[6,8,9,10,16]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%138%9%138%16%112%93%112%95%112%97%165%149%163$4@$3@2%149%165%163$3@%192@2%152$2@%94@3%149%165%163$3@%217@2%152$1@%96@3%165%163$3@%203@2%152$0@%98@6%152%256$4@$2@$1@$0@2%256$3@%94@%96@%98@3|@|@|@|@|@"])
  fun op servers_nchotomy x = x
    val op servers_nchotomy =
    ThmBind.DT(((("exam4",20),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[6,8,9,10]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%138%30%229%163$0@%192@2%229%163$0@%217@2%163$0@%203@3|@"])
  fun op servers_Axiom x = x
    val op servers_Axiom =
    ThmBind.DT(((("exam4",21),
                [("bool",[8,14,25,53,55,63]),("exam4",[12]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%112%107%112%108%112%109%177%48%149%152$0%192@2$3@2%149%152$0%217@2$2@2%152$0%203@2$1@3|@|@|@|@"])
  fun op servers_induction x = x
    val op servers_induction =
    ThmBind.DT(((("exam4",22),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[6,8,9,10]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%127%25%165%149$0%192@2%149$0%203@2$0%217@4%138%30$1$0@|@2|@"])
  fun op num2people_people2num x = x
    val op num2people_people2num =
    ThmBind.DT(((("exam4",25),[("exam4",[24])]),["DISK_THM"]),
               [ThmBind.read"%132%29%157%241%243$0@3$0@|@"])
  fun op people2num_num2people x = x
    val op people2num_num2people =
    ThmBind.DT(((("exam4",26),[("exam4",[24])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%228@4%156%243%241$0@3$0@2|@"])
  fun op num2people_11 x = x
    val op num2people_11 =
    ThmBind.DT(((("exam4",27),
                [("bool",[26]),("exam4",[24])]),["DISK_THM"]),
               [ThmBind.read"%131%79%131%80%165%151$1@%211%193%228@4%165%151$0@%211%193%228@4%154%157%241$1@2%241$0@3%156$1@$0@4|@|@"])
  fun op people2num_11 x = x
    val op people2num_11 =
    ThmBind.DT(((("exam4",28),
                [("bool",[26]),("exam4",[24])]),["DISK_THM"]),
               [ThmBind.read"%132%29%132%34%154%156%243$1@2%243$0@3%157$1@$0@2|@|@"])
  fun op num2people_ONTO x = x
    val op num2people_ONTO =
    ThmBind.DT(((("exam4",29),
                [("bool",[25,62]),("exam4",[24])]),["DISK_THM"]),
               [ThmBind.read"%132%29%182%79%149%157$1@%241$0@3%151$0@%211%193%228@4|@|@"])
  fun op people2num_ONTO x = x
    val op people2num_ONTO =
    ThmBind.DT(((("exam4",30),
                [("bool",[26]),("exam4",[24])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%228@4%183%29%156$1@%243$0@2|@2|@"])
  fun op num2people_thm x = x
    val op num2people_thm =
    ThmBind.DT(((("exam4",32),[("exam4",[31])]),[]),
               [ThmBind.read"%157%241%150@2%226@"])
  fun op people2num_thm x = x
    val op people2num_thm =
    ThmBind.DT(((("exam4",33),
                [("bool",[25]),("exam4",[26,31]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%156%243%226@2%150@"])
  fun op people_EQ_people x = x
    val op people_EQ_people =
    ThmBind.DT(((("exam4",34),
                [("bool",[57]),("exam4",[28])]),["DISK_THM"]),
               [ThmBind.read"%132%29%132%34%154%157$1@$0@2%156%243$1@2%243$0@3|@|@"])
  fun op people_case_def x = x
    val op people_case_def =
    ThmBind.DT(((("exam4",37),[("exam4",[33,36])]),["DISK_THM"]),
               [ThmBind.read"%112%93%152%244%226@$0@2$0@|@"])
  fun op datatype_people x = x
    val op datatype_people =
    ThmBind.DT(((("exam4",38),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%202%74%226@2"])
  fun op people_case_cong x = x
    val op people_case_cong =
    ThmBind.DT(((("exam4",39),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[29,31,37]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%132%6%132%13%112%93%165%149%157$2@$1@2%165%157$1@%226@2%152$0@%94@4%152%244$2@$0@2%244$1@%94@3|@|@|@"])
  fun op people_nchotomy x = x
    val op people_nchotomy =
    ThmBind.DT(((("exam4",40),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[29,31]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%132%29%157$0@%226@|@"])
  fun op people_Axiom x = x
    val op people_Axiom =
    ThmBind.DT(((("exam4",41),
                [("bool",[8,25,55]),("exam4",[33])]),["DISK_THM"]),
               [ThmBind.read"%112%107%171%47%152$0%226@2$1@|@|@"])
  fun op people_induction x = x
    val op people_induction =
    ThmBind.DT(((("exam4",42),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[29,31]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%119%22%165$0%226@2%132%29$1$0@|@2|@"])
  fun op num2keys_keys2num x = x
    val op num2keys_keys2num =
    ThmBind.DT(((("exam4",45),[("exam4",[44])]),["DISK_THM"]),
               [ThmBind.read"%130%28%155%240%236$0@3$0@|@"])
  fun op keys2num_num2keys x = x
    val op keys2num_num2keys =
    ThmBind.DT(((("exam4",46),[("exam4",[44])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%194%228@5%156%236%240$0@3$0@2|@"])
  fun op num2keys_11 x = x
    val op num2keys_11 =
    ThmBind.DT(((("exam4",47),
                [("bool",[26]),("exam4",[44])]),["DISK_THM"]),
               [ThmBind.read"%131%79%131%80%165%151$1@%211%193%194%228@5%165%151$0@%211%193%194%228@5%154%155%240$1@2%240$0@3%156$1@$0@4|@|@"])
  fun op keys2num_11 x = x
    val op keys2num_11 =
    ThmBind.DT(((("exam4",48),
                [("bool",[26]),("exam4",[44])]),["DISK_THM"]),
               [ThmBind.read"%130%28%130%33%154%156%236$1@2%236$0@3%155$1@$0@2|@|@"])
  fun op num2keys_ONTO x = x
    val op num2keys_ONTO =
    ThmBind.DT(((("exam4",49),
                [("bool",[25,62]),("exam4",[44])]),["DISK_THM"]),
               [ThmBind.read"%130%28%182%79%149%155$1@%240$0@3%151$0@%211%193%194%228@5|@|@"])
  fun op keys2num_ONTO x = x
    val op keys2num_ONTO =
    ThmBind.DT(((("exam4",50),
                [("bool",[26]),("exam4",[44])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%194%228@5%181%28%156$1@%236$0@2|@2|@"])
  fun op num2keys_thm x = x
    val op num2keys_thm =
    ThmBind.DT(((("exam4",56),[("exam4",[51,52,53,54,55])]),[]),
               [ThmBind.read"%149%155%240%150@2%206@2%149%155%240%211%193%228@4%205@2%149%155%240%211%194%228@4%207@2%149%155%240%211%193%193%228@5%209@2%155%240%211%194%193%228@5%208@5"])
  fun op keys2num_thm x = x
    val op keys2num_thm =
    ThmBind.DT(((("exam4",57),
                [("bool",[25,53]),("exam4",[46,51,52,53,54,55]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%149%156%236%206@2%150@2%149%156%236%205@2%211%193%228@4%149%156%236%207@2%211%194%228@4%149%156%236%209@2%211%193%193%228@5%156%236%208@2%211%194%193%228@8"])
  fun op keys_EQ_keys x = x
    val op keys_EQ_keys =
    ThmBind.DT(((("exam4",58),
                [("bool",[57]),("exam4",[48])]),["DISK_THM"]),
               [ThmBind.read"%130%28%130%33%154%155$1@$0@2%156%236$1@2%236$0@3|@|@"])
  fun op keys_case_def x = x
    val op keys_case_def =
    ThmBind.DT(((("exam4",61),
                [("bool",[53,55,63]),("exam4",[57,60]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%149%112%93%112%95%112%97%112%99%112%101%152%237%206@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@2%149%112%93%112%95%112%97%112%99%112%101%152%237%205@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@2%149%112%93%112%95%112%97%112%99%112%101%152%237%207@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@2%149%112%93%112%95%112%97%112%99%112%101%152%237%209@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@2%112%93%112%95%112%97%112%99%112%101%152%237%208@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@5"])
  fun op datatype_keys x = x
    val op datatype_keys =
    ThmBind.DT(((("exam4",62),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%202%68%206@%205@%207@%209@%208@2"])
  fun op keys_distinct x = x
    val op keys_distinct =
    ThmBind.DT(((("exam4",63),
                [("exam4",[57,58]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%149%262%155%206@%205@3%149%262%155%206@%207@3%149%262%155%206@%209@3%149%262%155%206@%208@3%149%262%155%205@%207@3%149%262%155%205@%209@3%149%262%155%205@%208@3%149%262%155%207@%209@3%149%262%155%207@%208@3%262%155%209@%208@11"])
  fun op keys_case_cong x = x
    val op keys_case_cong =
    ThmBind.DT(((("exam4",64),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[49,51,52,53,54,55,61]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%130%5%130%12%112%93%112%95%112%97%112%99%112%101%165%149%155$6@$5@2%149%165%155$5@%206@2%152$4@%94@3%149%165%155$5@%205@2%152$3@%96@3%149%165%155$5@%207@2%152$2@%98@3%149%165%155$5@%209@2%152$1@%100@3%165%155$5@%208@2%152$0@%102@8%152%237$6@$4@$3@$2@$1@$0@2%237$5@%94@%96@%98@%100@%102@3|@|@|@|@|@|@|@"])
  fun op keys_nchotomy x = x
    val op keys_nchotomy =
    ThmBind.DT(((("exam4",65),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[49,51,52,53,54,55]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%130%28%229%155$0@%206@2%229%155$0@%205@2%229%155$0@%207@2%229%155$0@%209@2%155$0@%208@5|@"])
  fun op keys_Axiom x = x
    val op keys_Axiom =
    ThmBind.DT(((("exam4",66),
                [("bool",[8,14,25,53,55,63]),("exam4",[57]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%112%107%112%108%112%109%112%110%112%111%169%46%149%152$0%206@2$5@2%149%152$0%205@2$4@2%149%152$0%207@2$3@2%149%152$0%209@2$2@2%152$0%208@2$1@5|@|@|@|@|@|@"])
  fun op keys_induction x = x
    val op keys_induction =
    ThmBind.DT(((("exam4",67),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[49,51,52,53,54,55]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%117%21%165%149$0%205@2%149$0%206@2%149$0%207@2%149$0%208@2$0%209@6%130%28$1$0@|@2|@"])
  fun op datatype_princs x = x
    val op datatype_princs =
    ThmBind.DT(((("exam4",78),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%202%77%214@%227@%210@2"])
  fun op princs_11 x = x
    val op princs_11 =
    ThmBind.DT(((("exam4",79),
                [("bool",[26,55,62,180]),("exam4",[69,70,71,72,73,74,75]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%138%30%138%35%154%158%214$1@2%214$0@3%163$1@$0@2|@|@2%149%132%29%132%34%154%158%227$1@2%227$0@3%157$1@$0@2|@|@2%130%28%130%33%154%158%210$1@2%210$0@3%155$1@$0@2|@|@3"])
  fun op princs_distinct x = x
    val op princs_distinct =
    ThmBind.DT(((("exam4",80),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("exam4",[69,70,71,72,73,74,75]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%132%34%138%30%262%158%214$0@2%227$1@3|@|@2%149%130%33%138%30%262%158%214$0@2%210$1@3|@|@2%130%33%132%29%262%158%227$0@2%210$1@3|@|@3"])
  fun op princs_case_cong x = x
    val op princs_case_cong =
    ThmBind.DT(((("exam4",81),
                [("bool",[26,180]),
                 ("exam4",[69,70,71,72,73,74,75,76])]),["DISK_THM"]),
               [ThmBind.read"%133%7%133%14%126%48%118%55%116%61%165%149%158$4@$3@2%149%138%30%165%158$4@%214$0@3%152$3$0@2%50$0@3|@2%149%132%29%165%158$4@%227$0@3%152$2$0@2%58$0@3|@2%130%28%165%158$4@%210$0@3%152$1$0@2%63$0@3|@5%152%246$4@$2@$1@$0@2%246$3@%50@%58@%63@3|@|@|@|@|@"])
  fun op princs_nchotomy x = x
    val op princs_nchotomy =
    ThmBind.DT(((("exam4",82),
                [("bool",[26,180]),
                 ("exam4",[69,70,71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%133%75%229%184%88%158$1@%214$0@2|@2%229%183%71%158$1@%227$0@2|@2%181%67%158$1@%210$0@2|@3|@"])
  fun op princs_Axiom x = x
    val op princs_Axiom =
    ThmBind.DT(((("exam4",83),
                [("bool",[26,180]),("exam4",[69,70,71,72,73,74,75]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%126%52%118%55%116%61%173%64%149%138%30%152$1%214$0@3$4$0@2|@2%149%132%29%152$1%227$0@3$3$0@2|@2%130%28%152$1%210$0@3$2$0@2|@3|@|@|@|@"])
  fun op princs_induction x = x
    val op princs_induction =
    ThmBind.DT(((("exam4",84),
                [("bool",[26]),
                 ("exam4",[69,70,71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%121%23%165%149%138%88$1%214$0@2|@2%149%132%71$1%227$0@2|@2%130%67$1%210$0@2|@4%133%72$1$0@|@2|@"])
  fun op num2access_access2num x = x
    val op num2access_access2num =
    ThmBind.DT(((("exam4",87),[("exam4",[86])]),["DISK_THM"]),
               [ThmBind.read"%113%27%153%239%230$0@3$0@|@"])
  fun op access2num_num2access x = x
    val op access2num_num2access =
    ThmBind.DT(((("exam4",88),[("exam4",[86])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%193%228@5%156%230%239$0@3$0@2|@"])
  fun op num2access_11 x = x
    val op num2access_11 =
    ThmBind.DT(((("exam4",89),
                [("bool",[26]),("exam4",[86])]),["DISK_THM"]),
               [ThmBind.read"%131%79%131%80%165%151$1@%211%193%193%228@5%165%151$0@%211%193%193%228@5%154%153%239$1@2%239$0@3%156$1@$0@4|@|@"])
  fun op access2num_11 x = x
    val op access2num_11 =
    ThmBind.DT(((("exam4",90),
                [("bool",[26]),("exam4",[86])]),["DISK_THM"]),
               [ThmBind.read"%113%27%113%32%154%156%230$1@2%230$0@3%153$1@$0@2|@|@"])
  fun op num2access_ONTO x = x
    val op num2access_ONTO =
    ThmBind.DT(((("exam4",91),
                [("bool",[25,62]),("exam4",[86])]),["DISK_THM"]),
               [ThmBind.read"%113%27%182%79%149%153$1@%239$0@3%151$0@%211%193%193%228@5|@|@"])
  fun op access2num_ONTO x = x
    val op access2num_ONTO =
    ThmBind.DT(((("exam4",92),
                [("bool",[26]),("exam4",[86])]),["DISK_THM"]),
               [ThmBind.read"%131%79%154%151$0@%211%193%193%228@5%166%27%156$1@%230$0@2|@2|@"])
  fun op num2access_thm x = x
    val op num2access_thm =
    ThmBind.DT(((("exam4",96),[("exam4",[93,94,95])]),[]),
               [ThmBind.read"%149%153%239%150@2%248@2%149%153%239%211%193%228@4%252@2%153%239%211%194%228@4%261@3"])
  fun op access2num_thm x = x
    val op access2num_thm =
    ThmBind.DT(((("exam4",97),
                [("bool",[25]),("exam4",[88,93,94,95]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%149%156%230%248@2%150@2%149%156%230%252@2%211%193%228@4%156%230%261@2%211%194%228@5"])
  fun op access_EQ_access x = x
    val op access_EQ_access =
    ThmBind.DT(((("exam4",98),
                [("bool",[57]),("exam4",[90])]),["DISK_THM"]),
               [ThmBind.read"%113%27%113%32%154%153$1@$0@2%156%230$1@2%230$0@3|@|@"])
  fun op access_case_def x = x
    val op access_case_def =
    ThmBind.DT(((("exam4",101),
                [("bool",[55,63]),("exam4",[97,100]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%149%112%93%112%95%112%97%152%231%248@$2@$1@$0@2$2@|@|@|@2%149%112%93%112%95%112%97%152%231%252@$2@$1@$0@2$1@|@|@|@2%112%93%112%95%112%97%152%231%261@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_access x = x
    val op datatype_access =
    ThmBind.DT(((("exam4",102),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%202%44%248@%252@%261@2"])
  fun op access_distinct x = x
    val op access_distinct =
    ThmBind.DT(((("exam4",103),
                [("exam4",[97,98]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%149%262%153%248@%252@3%149%262%153%248@%261@3%262%153%252@%261@4"])
  fun op access_case_cong x = x
    val op access_case_cong =
    ThmBind.DT(((("exam4",104),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[91,93,94,95,101]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%113%4%113%11%112%93%112%95%112%97%165%149%153$4@$3@2%149%165%153$3@%248@2%152$2@%94@3%149%165%153$3@%252@2%152$1@%96@3%165%153$3@%261@2%152$0@%98@6%152%231$4@$2@$1@$0@2%231$3@%94@%96@%98@3|@|@|@|@|@"])
  fun op access_nchotomy x = x
    val op access_nchotomy =
    ThmBind.DT(((("exam4",105),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[91,93,94,95]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%113%27%229%153$0@%248@2%229%153$0@%252@2%153$0@%261@3|@"])
  fun op access_Axiom x = x
    val op access_Axiom =
    ThmBind.DT(((("exam4",106),
                [("bool",[8,14,25,53,55,63]),("exam4",[97]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%112%107%112%108%112%109%167%45%149%152$0%248@2$3@2%149%152$0%252@2$2@2%152$0%261@2$1@3|@|@|@|@"])
  fun op access_induction x = x
    val op access_induction =
    ThmBind.DT(((("exam4",107),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam4",[91,93,94,95]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%115%20%165%149$0%248@2%149$0%252@2$0%261@4%113%27$1$0@|@2|@"])
  fun op datatype_serviceKey x = x
    val op datatype_serviceKey =
    ThmBind.DT(((("exam4",116),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%202%91%215@%204@2"])
  fun op serviceKey_11 x = x
    val op serviceKey_11 =
    ThmBind.DT(((("exam4",117),
                [("bool",[26,55,62,180]),("exam4",[109,110,111,112,113]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%138%30%138%35%154%164%215$1@2%215$0@3%163$1@$0@2|@|@2%130%28%130%33%154%164%204$1@2%204$0@3%155$1@$0@2|@|@2"])
  fun op serviceKey_distinct x = x
    val op serviceKey_distinct =
    ThmBind.DT(((("exam4",118),
                [("bool",[25,26,46,53,62,180]),
                 ("exam4",[109,110,111,112,113]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%130%33%138%30%262%164%215$0@2%204$1@3|@|@"])
  fun op serviceKey_case_cong x = x
    val op serviceKey_case_cong =
    ThmBind.DT(((("exam4",119),
                [("bool",[26,180]),
                 ("exam4",[109,110,111,112,113,114])]),["DISK_THM"]),
               [ThmBind.read"%139%10%139%17%126%48%116%54%165%149%164$3@$2@2%149%138%30%165%164$3@%215$0@3%152$2$0@2%50$0@3|@2%130%28%165%164$3@%204$0@3%152$1$0@2%57$0@3|@4%152%258$3@$1@$0@2%258$2@%50@%57@3|@|@|@|@"])
  fun op serviceKey_nchotomy x = x
    val op serviceKey_nchotomy =
    ThmBind.DT(((("exam4",120),
                [("bool",[26,180]),
                 ("exam4",[109,110,111,112,113])]),["DISK_THM"]),
               [ThmBind.read"%139%92%229%184%88%164$1@%215$0@2|@2%181%67%164$1@%204$0@2|@2|@"])
  fun op serviceKey_Axiom x = x
    val op serviceKey_Axiom =
    ThmBind.DT(((("exam4",121),
                [("bool",[26,180]),("exam4",[109,110,111,112,113]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%126%52%116%54%179%66%149%138%30%152$1%215$0@3$3$0@2|@2%130%28%152$1%204$0@3$2$0@2|@2|@|@|@"])
  fun op serviceKey_induction x = x
    val op serviceKey_induction =
    ThmBind.DT(((("exam4",122),
                [("bool",[26]),
                 ("exam4",[109,110,111,112,113])]),["DISK_THM"]),
               [ThmBind.read"%129%26%165%149%138%88$1%215$0@2|@2%130%67$1%204$0@2|@3%139%89$1$0@|@2|@"])
  fun op datatype_props x = x
    val op datatype_props =
    ThmBind.DT(((("exam4",133),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%202%78%225@%213@%186@2"])
  fun op props_11 x = x
    val op props_11 =
    ThmBind.DT(((("exam4",134),
                [("bool",[26,50,55,62,180]),
                 ("exam4",[124,125,126,127,128,129,130]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%139%31%139%36%154%159%225$1@2%225$0@3%164$1@$0@2|@|@2%149%132%37%130%42%132%40%130%43%154%159%213$3@$2@2%213$1@$0@3%149%157$3@$1@2%155$2@$0@3|@|@|@|@2%113%27%113%32%154%159%186$1@2%186$0@3%153$1@$0@2|@|@3"])
  fun op props_distinct x = x
    val op props_distinct =
    ThmBind.DT(((("exam4",135),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("exam4",[124,125,126,127,128,129,130]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%149%130%42%132%37%139%31%262%159%225$0@2%213$1@$2@3|@|@|@2%149%113%32%139%31%262%159%225$0@2%186$1@3|@|@2%130%42%132%37%113%27%262%159%213$1@$2@2%186$0@3|@|@|@3"])
  fun op props_case_cong x = x
    val op props_case_cong =
    ThmBind.DT(((("exam4",136),
                [("bool",[26,180]),
                 ("exam4",
                 [124,125,126,127,128,129,130,131])]),["DISK_THM"]),
               [ThmBind.read"%134%8%134%15%128%49%120%56%114%60%165%149%159$4@$3@2%149%139%31%165%159$4@%225$0@3%152$3$0@2%51$0@3|@2%149%132%37%130%42%165%159$5@%213$1@$0@3%152$3$1@$0@2%59$1@$0@3|@|@2%113%27%165%159$4@%186$0@3%152$1$0@2%62$0@3|@5%152%250$4@$2@$1@$0@2%250$3@%51@%59@%62@3|@|@|@|@|@"])
  fun op props_nchotomy x = x
    val op props_nchotomy =
    ThmBind.DT(((("exam4",137),
                [("bool",[26,180]),
                 ("exam4",[124,125,126,127,128,129,130])]),["DISK_THM"]),
               [ThmBind.read"%134%76%229%185%89%159$1@%225$0@2|@2%229%183%71%181%67%159$2@%213$1@$0@2|@|@2%166%27%159$1@%186$0@2|@3|@"])
  fun op props_Axiom x = x
    val op props_Axiom =
    ThmBind.DT(((("exam4",138),
                [("bool",[26,180]),("exam4",[124,125,126,127,128,129,130]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%128%53%120%56%114%60%175%65%149%139%31%152$1%225$0@3$4$0@2|@2%149%132%37%130%42%152$2%213$1@$0@3$4$1@$0@2|@|@2%113%27%152$1%186$0@3$2$0@2|@3|@|@|@|@"])
  fun op props_induction x = x
    val op props_induction =
    ThmBind.DT(((("exam4",139),
                [("bool",[26]),
                 ("exam4",[124,125,126,127,128,129,130])]),["DISK_THM"]),
               [ThmBind.read"%122%24%165%149%139%89$1%225$0@2|@2%149%132%71%130%67$2%213$1@$0@2|@|@2%113%27$1%186$0@2|@4%134%73$1$0@|@2|@"])
  fun op init_auth_thm x = x
    val op init_auth_thm =
    ThmBind.DT(((("exam4",140),
                [("aclDrules",[3]),("aclrules",[23])]),["DISK_THM"]),
               [ThmBind.read"%165%253%141%3@%145%18@%19@3%254%212%227%226@3%249%225%215%217@6%165%253%141%3@%145%18@%19@3%235%249%225%215%217@4%233%254%212%210%207@3%249%225%204%209@5%254%212%210%206@3%249%213%226@%209@7%165%253%141%3@%145%18@%19@3%234%212%227%226@3%249%225%215%217@6%253%141%3@%145%18@%19@3%233%254%212%210%207@3%249%225%204%209@5%254%212%210%206@3%249%213%226@%209@8"])
  fun op session_key_receipt_thm x = x
    val op session_key_receipt_thm =
    ThmBind.DT(((("exam4",141),
                [("aclDrules",[1,2,3,7,16]),
                 ("aclrules",[23])]),["DISK_THM"]),
               [ThmBind.read"%165%253%141%3@%145%18@%19@3%260%212%210%207@3%212%214%192@5%165%253%141%3@%145%18@%19@3%235%249%225%204%209@4%254%212%210%209@3%249%225%215%203@7%165%253%141%3@%145%18@%19@3%234%212%214%192@3%249%225%204%209@6%165%253%141%3@%145%18@%19@3%233%254%212%210%207@3%249%225%204%209@5%254%212%210%206@3%249%213%226@%209@6%253%141%3@%145%18@%19@3%233%254%212%210%209@3%249%225%215%203@5%254%212%210%206@3%249%213%226@%209@9"])
  fun op request_for_services_thm x = x
    val op request_for_services_thm =
    ThmBind.DT(((("exam4",142),
                [("aclDrules",[2,3,7,16]),
                 ("aclrules",[23])]),["DISK_THM"]),
               [ThmBind.read"%165%253%141%3@%145%18@%19@3%260%212%210%206@3%212%214%192@5%165%253%141%3@%145%18@%19@3%235%249%213%226@%209@3%254%212%210%208@3%249%186%252@6%165%253%141%3@%145%18@%19@3%235%249%213%226@%209@3%254%212%210%205@3%260%212%210%208@3%212%227%226@7%165%253%141%3@%145%18@%19@3%234%212%214%192@3%249%213%226@%209@5%165%253%141%3@%145%18@%19@3%233%254%212%210%209@3%249%225%215%203@5%254%212%210%206@3%249%213%226@%209@6%253%141%3@%145%18@%19@3%233%254%212%210%205@3%260%212%210%208@3%212%227%226@5%254%212%210%208@3%249%186%252@10"])
  fun op service_request_thm x = x
    val op service_request_thm =
    ThmBind.DT(((("exam4",143),[("aclDrules",[1,2,3,16])]),["DISK_THM"]),
               [ThmBind.read"%165%253%141%3@%145%18@%19@3%260%212%210%205@3%212%214%217@5%165%253%141%3@%145%18@%19@3%234%212%227%226@3%249%186%248@5%165%253%141%3@%145%18@%19@3%234%212%214%217@3%260%212%210%208@3%212%227%226@6%165%253%141%3@%145%18@%19@3%233%254%212%210%205@3%260%212%210%208@3%212%227%226@5%254%212%210%208@3%249%186%248@6%253%141%3@%145%18@%19@3%249%186%248@7"])

  val _ = DB.bindl "exam4"
  [("servers_TY_DEF",servers_TY_DEF,DB.Def),
   ("servers_BIJ",servers_BIJ,DB.Def),
   ("servers_size_def",servers_size_def,DB.Def),
   ("servers_CASE",servers_CASE,DB.Def),
   ("people_TY_DEF",people_TY_DEF,DB.Def),
   ("people_BIJ",people_BIJ,DB.Def),
   ("people_size_def",people_size_def,DB.Def),
   ("people_CASE",people_CASE,DB.Def), ("keys_TY_DEF",keys_TY_DEF,DB.Def),
   ("keys_BIJ",keys_BIJ,DB.Def), ("keys_size_def",keys_size_def,DB.Def),
   ("keys_CASE",keys_CASE,DB.Def), ("princs_TY_DEF",princs_TY_DEF,DB.Def),
   ("princs_case_def",princs_case_def,DB.Def),
   ("princs_size_def",princs_size_def,DB.Def),
   ("access_TY_DEF",access_TY_DEF,DB.Def),
   ("access_BIJ",access_BIJ,DB.Def),
   ("access_size_def",access_size_def,DB.Def),
   ("access_CASE",access_CASE,DB.Def),
   ("serviceKey_TY_DEF",serviceKey_TY_DEF,DB.Def),
   ("serviceKey_case_def",serviceKey_case_def,DB.Def),
   ("serviceKey_size_def",serviceKey_size_def,DB.Def),
   ("props_TY_DEF",props_TY_DEF,DB.Def),
   ("props_case_def",props_case_def,DB.Def),
   ("props_size_def",props_size_def,DB.Def),
   ("num2servers_servers2num",num2servers_servers2num,DB.Thm),
   ("servers2num_num2servers",servers2num_num2servers,DB.Thm),
   ("num2servers_11",num2servers_11,DB.Thm),
   ("servers2num_11",servers2num_11,DB.Thm),
   ("num2servers_ONTO",num2servers_ONTO,DB.Thm),
   ("servers2num_ONTO",servers2num_ONTO,DB.Thm),
   ("num2servers_thm",num2servers_thm,DB.Thm),
   ("servers2num_thm",servers2num_thm,DB.Thm),
   ("servers_EQ_servers",servers_EQ_servers,DB.Thm),
   ("servers_case_def",servers_case_def,DB.Thm),
   ("datatype_servers",datatype_servers,DB.Thm),
   ("servers_distinct",servers_distinct,DB.Thm),
   ("servers_case_cong",servers_case_cong,DB.Thm),
   ("servers_nchotomy",servers_nchotomy,DB.Thm),
   ("servers_Axiom",servers_Axiom,DB.Thm),
   ("servers_induction",servers_induction,DB.Thm),
   ("num2people_people2num",num2people_people2num,DB.Thm),
   ("people2num_num2people",people2num_num2people,DB.Thm),
   ("num2people_11",num2people_11,DB.Thm),
   ("people2num_11",people2num_11,DB.Thm),
   ("num2people_ONTO",num2people_ONTO,DB.Thm),
   ("people2num_ONTO",people2num_ONTO,DB.Thm),
   ("num2people_thm",num2people_thm,DB.Thm),
   ("people2num_thm",people2num_thm,DB.Thm),
   ("people_EQ_people",people_EQ_people,DB.Thm),
   ("people_case_def",people_case_def,DB.Thm),
   ("datatype_people",datatype_people,DB.Thm),
   ("people_case_cong",people_case_cong,DB.Thm),
   ("people_nchotomy",people_nchotomy,DB.Thm),
   ("people_Axiom",people_Axiom,DB.Thm),
   ("people_induction",people_induction,DB.Thm),
   ("num2keys_keys2num",num2keys_keys2num,DB.Thm),
   ("keys2num_num2keys",keys2num_num2keys,DB.Thm),
   ("num2keys_11",num2keys_11,DB.Thm), ("keys2num_11",keys2num_11,DB.Thm),
   ("num2keys_ONTO",num2keys_ONTO,DB.Thm),
   ("keys2num_ONTO",keys2num_ONTO,DB.Thm),
   ("num2keys_thm",num2keys_thm,DB.Thm),
   ("keys2num_thm",keys2num_thm,DB.Thm),
   ("keys_EQ_keys",keys_EQ_keys,DB.Thm),
   ("keys_case_def",keys_case_def,DB.Thm),
   ("datatype_keys",datatype_keys,DB.Thm),
   ("keys_distinct",keys_distinct,DB.Thm),
   ("keys_case_cong",keys_case_cong,DB.Thm),
   ("keys_nchotomy",keys_nchotomy,DB.Thm),
   ("keys_Axiom",keys_Axiom,DB.Thm),
   ("keys_induction",keys_induction,DB.Thm),
   ("datatype_princs",datatype_princs,DB.Thm),
   ("princs_11",princs_11,DB.Thm),
   ("princs_distinct",princs_distinct,DB.Thm),
   ("princs_case_cong",princs_case_cong,DB.Thm),
   ("princs_nchotomy",princs_nchotomy,DB.Thm),
   ("princs_Axiom",princs_Axiom,DB.Thm),
   ("princs_induction",princs_induction,DB.Thm),
   ("num2access_access2num",num2access_access2num,DB.Thm),
   ("access2num_num2access",access2num_num2access,DB.Thm),
   ("num2access_11",num2access_11,DB.Thm),
   ("access2num_11",access2num_11,DB.Thm),
   ("num2access_ONTO",num2access_ONTO,DB.Thm),
   ("access2num_ONTO",access2num_ONTO,DB.Thm),
   ("num2access_thm",num2access_thm,DB.Thm),
   ("access2num_thm",access2num_thm,DB.Thm),
   ("access_EQ_access",access_EQ_access,DB.Thm),
   ("access_case_def",access_case_def,DB.Thm),
   ("datatype_access",datatype_access,DB.Thm),
   ("access_distinct",access_distinct,DB.Thm),
   ("access_case_cong",access_case_cong,DB.Thm),
   ("access_nchotomy",access_nchotomy,DB.Thm),
   ("access_Axiom",access_Axiom,DB.Thm),
   ("access_induction",access_induction,DB.Thm),
   ("datatype_serviceKey",datatype_serviceKey,DB.Thm),
   ("serviceKey_11",serviceKey_11,DB.Thm),
   ("serviceKey_distinct",serviceKey_distinct,DB.Thm),
   ("serviceKey_case_cong",serviceKey_case_cong,DB.Thm),
   ("serviceKey_nchotomy",serviceKey_nchotomy,DB.Thm),
   ("serviceKey_Axiom",serviceKey_Axiom,DB.Thm),
   ("serviceKey_induction",serviceKey_induction,DB.Thm),
   ("datatype_props",datatype_props,DB.Thm), ("props_11",props_11,DB.Thm),
   ("props_distinct",props_distinct,DB.Thm),
   ("props_case_cong",props_case_cong,DB.Thm),
   ("props_nchotomy",props_nchotomy,DB.Thm),
   ("props_Axiom",props_Axiom,DB.Thm),
   ("props_induction",props_induction,DB.Thm),
   ("init_auth_thm",init_auth_thm,DB.Thm),
   ("session_key_receipt_thm",session_key_receipt_thm,DB.Thm),
   ("request_for_services_thm",request_for_services_thm,DB.Thm),
   ("service_request_thm",service_request_thm,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exam4",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY5.exam4,7.serversNTY5.exam4,6.peopleNTY5.exam4,4.keysNTY5.exam4,6.princsNTY5.exam4,6.accessNTY5.exam4,10.serviceKeyNTY5.exam4,5.props"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exam4",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO11.servers2num4.%255OO11.num2servers4.%242OO2.AS4.%192OO3.TGS4.%217OO2.FS4.%203OO12.servers_size4.%257OO12.servers_CASE4.%256OO4.case4.%256OO10.people2num4.%243OO10.num2people4.%241OO6.Ursala4.%226OO11.people_size4.%245OO11.people_CASE4.%244OO4.case4.%244OO8.keys2num4.%236OO8.num2keys4.%240OO4.KTGS4.%206OO3.KFS4.%205OO2.KU4.%207OO5.KUTGS4.%209OO4.KUFS4.%208OO9.keys_size4.%238OO9.keys_CASE4.%237OO4.case4.%237OO2.PR4.%214OO4.User4.%227OO3.Key4.%210OO11.princs_CASE4.%246OO11.princs_size4.%247OO4.case4.%246OO10.access2num4.%230OO10.num2access4.%239OO5.print4.%248OO4.read4.%252OO5.write4.%261OO11.access_size4.%232OO11.access_CASE4.%231OO4.case4.%231OO4.SERV4.%215OO1.K4.%204OO15.serviceKey_CASE4.%258OO15.serviceKey_size4.%259OO4.case4.%258OO3.USE4.%225OO2.PK4.%213OO2.AC4.%186OO10.props_CASE4.%250OO10.props_size4.%251OO4.case4.%250"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val exam4_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="exam4"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val exam4_grammars = 
    Portable.## (addtyUDs,addtmUDs) exam4_grammars
  val _ = Parse.grammarDB_insert("exam4",exam4_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG servers_Axiom,
           case_def=servers_case_def,
           case_cong=servers_case_cong,
           induction=ORIG servers_induction,
           nchotomy=servers_nchotomy,
           size=SOME(Parse.Term`(exam4$servers_size) :exam4$servers -> num$num`,
                     ORIG servers_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME servers_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2servers_thm servers2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG people_Axiom,
           case_def=people_case_def,
           case_cong=people_case_cong,
           induction=ORIG people_induction,
           nchotomy=people_nchotomy,
           size=SOME(Parse.Term`(exam4$people_size) :exam4$people -> num$num`,
                     ORIG people_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2people_thm people2num_thm (SOME ("people", people_EQ_people)) tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG keys_Axiom,
           case_def=keys_case_def,
           case_cong=keys_case_cong,
           induction=ORIG keys_induction,
           nchotomy=keys_nchotomy,
           size=SOME(Parse.Term`(exam4$keys_size) :exam4$keys -> num$num`,
                     ORIG keys_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME keys_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2keys_thm keys2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG princs_Axiom,
           case_def=princs_case_def,
           case_cong=princs_case_cong,
           induction=ORIG princs_induction,
           nchotomy=princs_nchotomy,
           size=SOME(Parse.Term`(exam4$princs_size) :exam4$princs -> num$num`,
                     ORIG princs_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME princs_11,
           distinct=SOME princs_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG access_Axiom,
           case_def=access_case_def,
           case_cong=access_case_cong,
           induction=ORIG access_induction,
           nchotomy=access_nchotomy,
           size=SOME(Parse.Term`(exam4$access_size) :exam4$access -> num$num`,
                     ORIG access_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME access_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2access_thm access2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG serviceKey_Axiom,
           case_def=serviceKey_case_def,
           case_cong=serviceKey_case_cong,
           induction=ORIG serviceKey_induction,
           nchotomy=serviceKey_nchotomy,
           size=SOME(Parse.Term`(exam4$serviceKey_size) :exam4$serviceKey -> num$num`,
                     ORIG serviceKey_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME serviceKey_11,
           distinct=SOME serviceKey_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG props_Axiom,
           case_def=props_case_def,
           case_cong=props_case_cong,
           induction=ORIG props_induction,
           nchotomy=props_nchotomy,
           size=SOME(Parse.Term`(exam4$props_size) :exam4$props -> num$num`,
                     ORIG props_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME props_11,
           distinct=SOME props_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "exam4"
end
