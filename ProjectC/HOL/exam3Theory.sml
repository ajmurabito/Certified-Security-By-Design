structure exam3Theory :> exam3Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading exam3Theory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open aclDrulesTheory cipherTheory
  in end;
  val _ = Theory.link_parents
          ("exam3",
          Arbnum.fromString "1584612915",
          Arbnum.fromString "35678")
          [("cipher",
           Arbnum.fromString "1584612836",
           Arbnum.fromString "939450"),
           ("aclDrules",
           Arbnum.fromString "1534466515",
           Arbnum.fromString "648647")];
  val _ = Theory.incorporate_types "exam3"
       [("roles", 0), ("principals", 0), ("people", 0), ("keyPrinc", 0),
        ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("exam3", "roles"),
   ID("exam3", "principals"), ID("exam3", "keyPrinc"),
   ID("exam3", "people"), ID("exam3", "commands"), ID("min", "bool"),
   ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "ARB"),
   ID("exam3", "Alice"), ID("exam3", "Ap"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"), ID("exam3", "Bob"),
   ID("bool", "COND"), ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("exam3", "Employee"), ID("exam3", "Key"),
   ID("arithmetic", "NUMERAL"), ID("aclfoundation", "Name"),
   ID("aclfoundation", "Princ"), ID("exam3", "PR"), ID("exam3", "Relay"),
   ID("exam3", "Role"), ID("num", "SUC"), ID("exam3", "Staff"),
   ID("bool", "TYPE_DEFINITION"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("exam3", "commands2num"),
   ID("exam3", "commands_CASE"), ID("exam3", "commands_size"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "Form"),
   ID("exam3", "go"), ID("aclfoundation", "impf"),
   ID("exam3", "keyPrinc_CASE"), ID("exam3", "keyPrinc_size"),
   ID("exam3", "launch"), ID("exam3", "num2commands"),
   ID("exam3", "num2people"), ID("exam3", "num2roles"),
   ID("exam3", "people2num"), ID("exam3", "people_CASE"),
   ID("exam3", "people_size"), ID("exam3", "principals_CASE"),
   ID("exam3", "principals_size"), ID("aclfoundation", "prop"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("exam3", "roles2num"), ID("exam3", "roles_CASE"),
   ID("exam3", "roles_size"), ID("aclrules", "sat"),
   ID("aclfoundation", "says"), ID("aclfoundation", "speaks_for"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 1, 5], TYOP [3], TYOP [0, 7, 0], TYOP [4],
   TYOP [0, 9, 3], TYOP [0, 10, 3], TYOP [0, 10, 11], TYOP [0, 7, 12],
   TYOP [5], TYOP [0, 14, 0], TYOP [0, 14, 5], TYOP [0, 0, 1],
   TYOP [0, 0, 14], TYOP [6], TYOP [0, 0, 19], TYOP [0, 9, 0],
   TYOP [0, 0, 3], TYOP [0, 22, 3], TYOP [0, 1, 3], TYOP [0, 24, 23],
   TYOP [0, 14, 3], TYOP [0, 26, 25], TYOP [0, 9, 27], TYOP [0, 19, 0],
   TYOP [0, 19, 5], TYOP [0, 14, 9], TYOP [0, 1, 9], TYOP [0, 9, 7],
   TYOP [0, 0, 9], TYOP [7], TYOP [9, 1, 0], TYOP [9, 14, 36],
   TYOP [8, 37], TYOP [0, 38, 35], TYOP [8, 9], TYOP [0, 40, 35], TYV "'c",
   TYV "'b", TYOP [10, 19, 3, 7, 43, 42], TYOP [11, 43], TYOP [11, 42],
   TYOP [0, 19, 35], TYOP [0, 9, 35], TYOP [0, 14, 35], TYOP [0, 7, 35],
   TYOP [0, 1, 35], TYOP [0, 19, 47], TYOP [0, 19, 3], TYOP [0, 7, 3],
   TYOP [0, 34, 35], TYOP [0, 32, 55], TYOP [0, 31, 56], TYOP [0, 14, 49],
   TYOP [0, 33, 35], TYOP [0, 33, 59], TYOP [0, 9, 38], TYOP [0, 7, 40],
   TYOP [0, 1, 51], TYOP [0, 3, 35], TYOP [0, 64, 35], TYOP [0, 47, 35],
   TYOP [0, 66, 35], TYOP [0, 10, 35], TYOP [0, 68, 35], TYOP [0, 48, 35],
   TYOP [0, 70, 35], TYOP [0, 22, 35], TYOP [0, 72, 35], TYOP [0, 26, 35],
   TYOP [0, 74, 35], TYOP [0, 49, 35], TYOP [0, 76, 35], TYOP [0, 50, 35],
   TYOP [0, 78, 35], TYOP [0, 41, 35], TYOP [0, 80, 35], TYOP [0, 39, 35],
   TYOP [0, 82, 35], TYOP [0, 24, 35], TYOP [0, 84, 35], TYOP [0, 51, 35],
   TYOP [0, 86, 35], TYOP [0, 0, 35], TYOP [0, 88, 35], TYOP [0, 0, 0],
   TYOP [0, 0, 90], TYOP [9, 45, 46], TYOP [9, 44, 92], TYOP [0, 92, 93],
   TYOP [0, 44, 94], TYOP [0, 36, 37], TYOP [0, 14, 96], TYOP [0, 46, 92],
   TYOP [0, 45, 98], TYOP [0, 0, 36], TYOP [0, 1, 100], TYOP [0, 35, 35],
   TYOP [0, 35, 102], TYOP [0, 0, 88], TYOP [0, 3, 64], TYOP [0, 9, 48],
   TYOP [0, 7, 50], TYOP [0, 40, 41], TYOP [0, 38, 39], TYOP [0, 53, 35],
   TYOP [0, 110, 35], TYOP [0, 29, 35], TYOP [0, 112, 35],
   TYOP [0, 61, 35], TYOP [0, 114, 35], TYOP [0, 15, 35],
   TYOP [0, 116, 35], TYOP [0, 54, 35], TYOP [0, 118, 35],
   TYOP [0, 62, 35], TYOP [0, 120, 35], TYOP [0, 2, 35], TYOP [0, 122, 35],
   TYOP [0, 35, 5], TYOP [0, 0, 40], TYOP [0, 125, 40], TYOP [0, 9, 126],
   TYOP [0, 0, 127], TYOP [0, 0, 38], TYOP [0, 129, 38], TYOP [0, 37, 130],
   TYOP [0, 0, 131], TYOP [35, 7], TYOP [0, 7, 133], TYOP [0, 88, 112],
   TYOP [0, 88, 116], TYOP [0, 88, 122], TYOP [0, 41, 120],
   TYOP [0, 39, 114], TYOP [48, 19, 7, 43, 42], TYOP [0, 140, 140],
   TYOP [0, 133, 141], TYOP [0, 140, 141], TYOP [0, 19, 140],
   TYOP [0, 133, 133], TYOP [0, 133, 145], TYOP [0, 133, 142],
   TYOP [0, 140, 35], TYOP [0, 93, 148], TYOP [0, 133, 140],
   TYOP [0, 133, 150]]
  end
  val _ = Theory.incorporate_consts "exam3" tyvector
     [("roles_size", 2), ("roles_CASE", 6), ("roles2num", 2),
      ("principals_size", 8), ("principals_CASE", 13), ("people_size", 15),
      ("people_CASE", 16), ("people2num", 15), ("num2roles", 17),
      ("num2people", 18), ("num2commands", 20), ("launch", 19),
      ("keyPrinc_size", 21), ("keyPrinc_CASE", 28), ("go", 19),
      ("commands_size", 29), ("commands_CASE", 30), ("commands2num", 29),
      ("Staff", 31), ("Role", 32), ("Relay", 1), ("PR", 33), ("Key", 33),
      ("Employee", 1), ("Bob", 14), ("Ap", 34), ("Alice", 14)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'keyPrinc'", 39), TMV("'principals'", 41), TMV("M", 44),
   TMV("M", 19), TMV("M", 9), TMV("M", 14), TMV("M", 7), TMV("M", 1),
   TMV("M'", 19), TMV("M'", 9), TMV("M'", 14), TMV("M'", 7), TMV("M'", 1),
   TMV("Oi", 45), TMV("Os", 46), TMV("P", 47), TMV("P", 48), TMV("P", 49),
   TMV("P", 50), TMV("P", 51), TMV("a", 19), TMV("a", 9), TMV("a", 0),
   TMV("a", 14), TMV("a", 1), TMV("a'", 19), TMV("a'", 9), TMV("a'", 0),
   TMV("a'", 14), TMV("a'", 1), TMV("a0", 40), TMV("a0", 38),
   TMV("commands", 52), TMV("f", 53), TMV("f", 10), TMV("f", 26),
   TMV("f", 24), TMV("f'", 10), TMV("f'", 26), TMV("f0", 10),
   TMV("f0", 26), TMV("f1", 10), TMV("f1", 24), TMV("f1'", 10),
   TMV("f1'", 24), TMV("f2", 22), TMV("f2'", 22), TMV("fn", 10),
   TMV("fn", 54), TMV("k", 9), TMV("keyPrinc", 57), TMV("kk", 9),
   TMV("m", 0), TMV("n", 0), TMV("p", 14), TMV("p", 7), TMV("people", 58),
   TMV("pp", 7), TMV("principals", 60), TMV("r", 0), TMV("r", 1),
   TMV("r'", 0), TMV("rep", 29), TMV("rep", 61), TMV("rep", 15),
   TMV("rep", 62), TMV("rep", 2), TMV("roles", 63), TMV("v0", 3),
   TMV("v0'", 3), TMV("v1", 3), TMV("v1'", 3), TMV("x", 19), TMV("x", 14),
   TMV("x", 1), TMV("x0", 3), TMV("x1", 3), TMC(12, 65), TMC(12, 66),
   TMC(12, 67), TMC(12, 69), TMC(12, 71), TMC(12, 73), TMC(12, 75),
   TMC(12, 77), TMC(12, 79), TMC(12, 81), TMC(12, 83), TMC(12, 85),
   TMC(12, 87), TMC(12, 70), TMC(12, 89), TMC(12, 76), TMC(12, 78),
   TMC(12, 80), TMC(12, 82), TMC(12, 86), TMC(13, 91), TMC(14, 95),
   TMC(14, 97), TMC(14, 99), TMC(14, 101), TMC(15, 103), TMC(16, 0),
   TMC(17, 104), TMC(18, 105), TMC(18, 103), TMC(18, 52), TMC(18, 106),
   TMC(18, 104), TMC(18, 58), TMC(18, 107), TMC(18, 108), TMC(18, 109),
   TMC(18, 63), TMC(19, 103), TMC(20, 66), TMC(20, 111), TMC(20, 113),
   TMC(20, 69), TMC(20, 115), TMC(20, 75), TMC(20, 117), TMC(20, 119),
   TMC(20, 121), TMC(20, 85), TMC(20, 123), TMC(20, 70), TMC(20, 89),
   TMC(20, 76), TMC(20, 86), TMC(21, 0), TMC(21, 14), TMC(21, 1),
   TMC(22, 14), TMC(23, 34), TMC(24, 90), TMC(25, 90), TMC(26, 40),
   TMC(26, 38), TMC(27, 14), TMC(28, 124), TMC(29, 128), TMC(29, 132),
   TMC(30, 102), TMC(31, 1), TMC(32, 33), TMC(33, 90), TMC(34, 134),
   TMC(36, 33), TMC(37, 1), TMC(38, 32), TMC(39, 90), TMC(40, 31),
   TMC(41, 135), TMC(41, 136), TMC(41, 137), TMC(41, 138), TMC(41, 139),
   TMC(42, 0), TMC(43, 103), TMC(44, 29), TMC(45, 30), TMC(46, 29),
   TMC(47, 142), TMC(49, 19), TMC(50, 143), TMC(51, 28), TMC(52, 21),
   TMC(53, 19), TMC(54, 20), TMC(55, 18), TMC(56, 17), TMC(57, 15),
   TMC(58, 16), TMC(59, 15), TMC(60, 13), TMC(61, 8), TMC(62, 144),
   TMC(63, 146), TMC(64, 147), TMC(65, 2), TMC(66, 6), TMC(67, 2),
   TMC(68, 149), TMC(69, 142), TMC(70, 151), TMC(71, 102)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("exam3",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%118%62%154%53%104$0@%147%137%159@3|@$0@|@"])
  fun op commands_BIJ x = x
    val op commands_BIJ =
    ThmBind.DT(((("exam3",1),[("bool",[116]),("exam3",[0])]),["DISK_THM"]),
               [ThmBind.read"%102%78%20%107%170%161$0@3$0@|@2%91%59%106%53%104$0@%147%137%159@3|$0@2%109%161%170$0@3$0@2|@2"])


  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("exam3",13),[]),[]),
               [ThmBind.read"%78%72%109%163$0@2%103@|@"])
  fun op commands_CASE x = x
    val op commands_CASE =
    ThmBind.DT(((("exam3",14),[]),[]),
               [ThmBind.read"%78%72%77%68%77%70%105%162$2@$1@$0@2%52%141%109$0@%103@2$2@$1@|%161$2@3|@|@|@"])
  fun op roles_TY_DEF x = x
    val op roles_TY_DEF =
    ThmBind.DT(((("exam3",22),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%126%66%156%53%104$0@%147%137%159@3|@$0@|@"])
  fun op roles_BIJ x = x
    val op roles_BIJ =
    ThmBind.DT(((("exam3",23),
                [("bool",[116]),("exam3",[22])]),["DISK_THM"]),
               [ThmBind.read"%102%96%24%114%172%181$0@3$0@|@2%91%59%106%53%104$0@%147%137%159@3|$0@2%109%181%172$0@3$0@2|@2"])


  fun op roles_size_def x = x
    val op roles_size_def =
    ThmBind.DT(((("exam3",35),[]),[]),
               [ThmBind.read"%96%74%109%183$0@2%103@|@"])
  fun op roles_CASE x = x
    val op roles_CASE =
    ThmBind.DT(((("exam3",36),[]),[]),
               [ThmBind.read"%96%74%77%68%77%70%105%182$2@$1@$0@2%52%141%109$0@%103@2$2@$1@|%181$2@3|@|@|@"])
  fun op people_TY_DEF x = x
    val op people_TY_DEF =
    ThmBind.DT(((("exam3",44),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%122%64%155%53%104$0@%147%137%159@3|@$0@|@"])
  fun op people_BIJ x = x
    val op people_BIJ =
    ThmBind.DT(((("exam3",45),
                [("bool",[116]),("exam3",[44])]),["DISK_THM"]),
               [ThmBind.read"%102%92%23%110%171%173$0@3$0@|@2%91%59%106%53%104$0@%147%137%159@3|$0@2%109%173%171$0@3$0@2|@2"])


  fun op people_size_def x = x
    val op people_size_def =
    ThmBind.DT(((("exam3",57),[]),[]),
               [ThmBind.read"%92%73%109%175$0@2%103@|@"])
  fun op people_CASE x = x
    val op people_CASE =
    ThmBind.DT(((("exam3",58),[]),[]),
               [ThmBind.read"%92%73%77%68%77%70%105%174$2@$1@$0@2%52%141%109$0@%103@2$2@$1@|%173$2@3|@|@|@"])
  fun op keyPrinc_TY_DEF x = x
    val op keyPrinc_TY_DEF =
    ThmBind.DT(((("exam3",66),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%120%63%158%31%87%0%115%95%31%115%160%129%23%113$1@%23%143%103@%99$0@%101%133@%131@3%53%139|@|$0@2|@2%160%130%24%113$1@%24%143%152%103@2%99%132@%101$0@%131@3%53%139|@|$0@2|@2%128%22%113$1@%22%143%152%152%103@3%99%132@%101%133@$0@3%53%139|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op keyPrinc_case_def x = x
    val op keyPrinc_case_def =
    ThmBind.DT(((("exam3",74),
                [("bool",[26,180]),("exam3",[67,68,69,70,71,72,73]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%102%92%23%83%35%88%42%82%45%105%167%153$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%102%96%24%83%35%88%42%82%45%105%167%151$3@2$2@$1@$0@2$1$3@2|@|@|@|@2%91%22%83%35%88%42%82%45%105%167%135$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op keyPrinc_size_def x = x
    val op keyPrinc_size_def =
    ThmBind.DT(((("exam3",75),
                [("bool",[26,180]),("exam3",[67,68,69,70,71,72,73]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%102%92%23%109%168%153$0@3%97%147%136%159@3%175$0@3|@2%102%96%24%109%168%151$0@3%97%147%136%159@3%183$0@3|@2%91%22%109%168%135$0@3%97%147%136%159@3$0@2|@3"])
  fun op principals_TY_DEF x = x
    val op principals_TY_DEF =
    ThmBind.DT(((("exam3",83),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%124%65%157%30%86%1%115%94%30%115%160%127%21%112$1@%21%142%103@$0@%53%138|@|$0@2|@2%127%21%112$1@%21%142%152%103@2$0@%53%138|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op principals_case_def x = x
    val op principals_case_def =
    ThmBind.DT(((("exam3",89),
                [("bool",[26,180]),("exam3",[84,85,86,87,88]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%102%90%21%80%34%80%41%105%176%149$2@2$1@$0@2$1$2@2|@|@|@2%90%21%80%34%80%41%105%176%146$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op principals_size_def x = x
    val op principals_size_def =
    ThmBind.DT(((("exam3",90),
                [("bool",[26,180]),("exam3",[84,85,86,87,88]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%102%90%21%109%177%149$0@3%97%147%136%159@3%168$0@3|@2%90%21%109%177%146$0@3%97%147%136%159@3%168$0@3|@2"])
  fun op num2commands_commands2num x = x
    val op num2commands_commands2num =
    ThmBind.DT(((("exam3",2),[("exam3",[1])]),["DISK_THM"]),
               [ThmBind.read"%78%20%107%170%161$0@3$0@|@"])
  fun op commands2num_num2commands x = x
    val op commands2num_num2commands =
    ThmBind.DT(((("exam3",3),[("exam3",[1])]),["DISK_THM"]),
               [ThmBind.read"%91%59%106%104$0@%147%137%159@4%109%161%170$0@3$0@2|@"])
  fun op num2commands_11 x = x
    val op num2commands_11 =
    ThmBind.DT(((("exam3",4),[("bool",[26]),("exam3",[1])]),["DISK_THM"]),
               [ThmBind.read"%91%59%91%61%115%104$1@%147%137%159@4%115%104$0@%147%137%159@4%106%107%170$1@2%170$0@3%109$1@$0@4|@|@"])
  fun op commands2num_11 x = x
    val op commands2num_11 =
    ThmBind.DT(((("exam3",5),[("bool",[26]),("exam3",[1])]),["DISK_THM"]),
               [ThmBind.read"%78%20%78%25%106%109%161$1@2%161$0@3%107$1@$0@2|@|@"])
  fun op num2commands_ONTO x = x
    val op num2commands_ONTO =
    ThmBind.DT(((("exam3",6),
                [("bool",[25,62]),("exam3",[1])]),["DISK_THM"]),
               [ThmBind.read"%78%20%128%59%102%107$1@%170$0@3%104$0@%147%137%159@4|@|@"])
  fun op commands2num_ONTO x = x
    val op commands2num_ONTO =
    ThmBind.DT(((("exam3",7),[("bool",[26]),("exam3",[1])]),["DISK_THM"]),
               [ThmBind.read"%91%59%106%104$0@%147%137%159@4%116%20%109$1@%161$0@2|@2|@"])
  fun op num2commands_thm x = x
    val op num2commands_thm =
    ThmBind.DT(((("exam3",10),[("exam3",[8,9])]),[]),
               [ThmBind.read"%102%107%170%103@2%165@2%107%170%147%136%159@4%169@2"])
  fun op commands2num_thm x = x
    val op commands2num_thm =
    ThmBind.DT(((("exam3",11),
                [("bool",[25,53]),("exam3",[3,8,9]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%102%109%161%165@2%103@2%109%161%169@2%147%136%159@4"])
  fun op commands_EQ_commands x = x
    val op commands_EQ_commands =
    ThmBind.DT(((("exam3",12),[("bool",[57]),("exam3",[5])]),["DISK_THM"]),
               [ThmBind.read"%78%20%78%25%106%107$1@$0@2%109%161$1@2%161$0@3|@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("exam3",15),
                [("bool",[55,63]),("exam3",[11,14]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%102%77%68%77%70%105%162%165@$1@$0@2$1@|@|@2%77%68%77%70%105%162%169@$1@$0@2$0@|@|@2"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("exam3",16),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%144%32%165@%169@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("exam3",17),
                [("exam3",[11,12]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%187%107%165@%169@2"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("exam3",18),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[6,8,9,15]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%78%3%78%8%77%68%77%70%115%102%107$3@$2@2%102%115%107$2@%165@2%105$1@%69@3%115%107$2@%169@2%105$0@%71@5%105%162$3@$1@$0@2%162$2@%69@%71@3|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("exam3",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[6,8,9]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%78%20%160%107$0@%165@2%107$0@%169@2|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("exam3",20),
                [("bool",[8,14,25,55,63]),("exam3",[11]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%77%75%77%76%117%33%102%105$0%165@2$2@2%105$0%169@2$1@2|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("exam3",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[6,8,9]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%79%15%115%102$0%165@2$0%169@3%78%20$1$0@|@2|@"])
  fun op num2roles_roles2num x = x
    val op num2roles_roles2num =
    ThmBind.DT(((("exam3",24),[("exam3",[23])]),["DISK_THM"]),
               [ThmBind.read"%96%24%114%172%181$0@3$0@|@"])
  fun op roles2num_num2roles x = x
    val op roles2num_num2roles =
    ThmBind.DT(((("exam3",25),[("exam3",[23])]),["DISK_THM"]),
               [ThmBind.read"%91%59%106%104$0@%147%137%159@4%109%181%172$0@3$0@2|@"])
  fun op num2roles_11 x = x
    val op num2roles_11 =
    ThmBind.DT(((("exam3",26),
                [("bool",[26]),("exam3",[23])]),["DISK_THM"]),
               [ThmBind.read"%91%59%91%61%115%104$1@%147%137%159@4%115%104$0@%147%137%159@4%106%114%172$1@2%172$0@3%109$1@$0@4|@|@"])
  fun op roles2num_11 x = x
    val op roles2num_11 =
    ThmBind.DT(((("exam3",27),
                [("bool",[26]),("exam3",[23])]),["DISK_THM"]),
               [ThmBind.read"%96%24%96%29%106%109%181$1@2%181$0@3%114$1@$0@2|@|@"])
  fun op num2roles_ONTO x = x
    val op num2roles_ONTO =
    ThmBind.DT(((("exam3",28),
                [("bool",[25,62]),("exam3",[23])]),["DISK_THM"]),
               [ThmBind.read"%96%24%128%59%102%114$1@%172$0@3%104$0@%147%137%159@4|@|@"])
  fun op roles2num_ONTO x = x
    val op roles2num_ONTO =
    ThmBind.DT(((("exam3",29),
                [("bool",[26]),("exam3",[23])]),["DISK_THM"]),
               [ThmBind.read"%91%59%106%104$0@%147%137%159@4%130%24%109$1@%181$0@2|@2|@"])
  fun op num2roles_thm x = x
    val op num2roles_thm =
    ThmBind.DT(((("exam3",32),[("exam3",[30,31])]),[]),
               [ThmBind.read"%102%114%172%103@2%145@2%114%172%147%136%159@4%150@2"])
  fun op roles2num_thm x = x
    val op roles2num_thm =
    ThmBind.DT(((("exam3",33),
                [("bool",[25,53]),("exam3",[25,30,31]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%102%109%181%145@2%103@2%109%181%150@2%147%136%159@4"])
  fun op roles_EQ_roles x = x
    val op roles_EQ_roles =
    ThmBind.DT(((("exam3",34),
                [("bool",[57]),("exam3",[27])]),["DISK_THM"]),
               [ThmBind.read"%96%24%96%29%106%114$1@$0@2%109%181$1@2%181$0@3|@|@"])
  fun op roles_case_def x = x
    val op roles_case_def =
    ThmBind.DT(((("exam3",37),
                [("bool",[55,63]),("exam3",[33,36]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%102%77%68%77%70%105%182%145@$1@$0@2$1@|@|@2%77%68%77%70%105%182%150@$1@$0@2$0@|@|@2"])
  fun op datatype_roles x = x
    val op datatype_roles =
    ThmBind.DT(((("exam3",38),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%144%67%145@%150@2"])
  fun op roles_distinct x = x
    val op roles_distinct =
    ThmBind.DT(((("exam3",39),
                [("exam3",[33,34]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%187%114%145@%150@2"])
  fun op roles_case_cong x = x
    val op roles_case_cong =
    ThmBind.DT(((("exam3",40),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[28,30,31,37]),
                 ("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%96%7%96%12%77%68%77%70%115%102%114$3@$2@2%102%115%114$2@%145@2%105$1@%69@3%115%114$2@%150@2%105$0@%71@5%105%182$3@$1@$0@2%182$2@%69@%71@3|@|@|@|@"])
  fun op roles_nchotomy x = x
    val op roles_nchotomy =
    ThmBind.DT(((("exam3",41),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[28,30,31]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%96%24%160%114$0@%145@2%114$0@%150@2|@"])
  fun op roles_Axiom x = x
    val op roles_Axiom =
    ThmBind.DT(((("exam3",42),
                [("bool",[8,14,25,55,63]),("exam3",[33]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%77%75%77%76%125%36%102%105$0%145@2$2@2%105$0%150@2$1@2|@|@|@"])
  fun op roles_induction x = x
    val op roles_induction =
    ThmBind.DT(((("exam3",43),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[28,30,31]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%89%19%115%102$0%145@2$0%150@3%96%24$1$0@|@2|@"])
  fun op num2people_people2num x = x
    val op num2people_people2num =
    ThmBind.DT(((("exam3",46),[("exam3",[45])]),["DISK_THM"]),
               [ThmBind.read"%92%23%110%171%173$0@3$0@|@"])
  fun op people2num_num2people x = x
    val op people2num_num2people =
    ThmBind.DT(((("exam3",47),[("exam3",[45])]),["DISK_THM"]),
               [ThmBind.read"%91%59%106%104$0@%147%137%159@4%109%173%171$0@3$0@2|@"])
  fun op num2people_11 x = x
    val op num2people_11 =
    ThmBind.DT(((("exam3",48),
                [("bool",[26]),("exam3",[45])]),["DISK_THM"]),
               [ThmBind.read"%91%59%91%61%115%104$1@%147%137%159@4%115%104$0@%147%137%159@4%106%110%171$1@2%171$0@3%109$1@$0@4|@|@"])
  fun op people2num_11 x = x
    val op people2num_11 =
    ThmBind.DT(((("exam3",49),
                [("bool",[26]),("exam3",[45])]),["DISK_THM"]),
               [ThmBind.read"%92%23%92%28%106%109%173$1@2%173$0@3%110$1@$0@2|@|@"])
  fun op num2people_ONTO x = x
    val op num2people_ONTO =
    ThmBind.DT(((("exam3",50),
                [("bool",[25,62]),("exam3",[45])]),["DISK_THM"]),
               [ThmBind.read"%92%23%128%59%102%110$1@%171$0@3%104$0@%147%137%159@4|@|@"])
  fun op people2num_ONTO x = x
    val op people2num_ONTO =
    ThmBind.DT(((("exam3",51),
                [("bool",[26]),("exam3",[45])]),["DISK_THM"]),
               [ThmBind.read"%91%59%106%104$0@%147%137%159@4%129%23%109$1@%173$0@2|@2|@"])
  fun op num2people_thm x = x
    val op num2people_thm =
    ThmBind.DT(((("exam3",54),[("exam3",[52,53])]),[]),
               [ThmBind.read"%102%110%171%103@2%134@2%110%171%147%136%159@4%140@2"])
  fun op people2num_thm x = x
    val op people2num_thm =
    ThmBind.DT(((("exam3",55),
                [("bool",[25,53]),("exam3",[47,52,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%102%109%173%134@2%103@2%109%173%140@2%147%136%159@4"])
  fun op people_EQ_people x = x
    val op people_EQ_people =
    ThmBind.DT(((("exam3",56),
                [("bool",[57]),("exam3",[49])]),["DISK_THM"]),
               [ThmBind.read"%92%23%92%28%106%110$1@$0@2%109%173$1@2%173$0@3|@|@"])
  fun op people_case_def x = x
    val op people_case_def =
    ThmBind.DT(((("exam3",59),
                [("bool",[55,63]),("exam3",[55,58]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%102%77%68%77%70%105%174%134@$1@$0@2$1@|@|@2%77%68%77%70%105%174%140@$1@$0@2$0@|@|@2"])
  fun op datatype_people x = x
    val op datatype_people =
    ThmBind.DT(((("exam3",60),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%144%56%134@%140@2"])
  fun op people_distinct x = x
    val op people_distinct =
    ThmBind.DT(((("exam3",61),
                [("exam3",[55,56]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%187%110%134@%140@2"])
  fun op people_case_cong x = x
    val op people_case_cong =
    ThmBind.DT(((("exam3",62),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[50,52,53,59]),
                 ("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%92%5%92%10%77%68%77%70%115%102%110$3@$2@2%102%115%110$2@%134@2%105$1@%69@3%115%110$2@%140@2%105$0@%71@5%105%174$3@$1@$0@2%174$2@%69@%71@3|@|@|@|@"])
  fun op people_nchotomy x = x
    val op people_nchotomy =
    ThmBind.DT(((("exam3",63),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[50,52,53]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%92%23%160%110$0@%134@2%110$0@%140@2|@"])
  fun op people_Axiom x = x
    val op people_Axiom =
    ThmBind.DT(((("exam3",64),
                [("bool",[8,14,25,55,63]),("exam3",[55]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%77%75%77%76%121%35%102%105$0%134@2$2@2%105$0%140@2$1@2|@|@|@"])
  fun op people_induction x = x
    val op people_induction =
    ThmBind.DT(((("exam3",65),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam3",[50,52,53]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%84%17%115%102$0%134@2$0%140@3%92%23$1$0@|@2|@"])
  fun op datatype_keyPrinc x = x
    val op datatype_keyPrinc =
    ThmBind.DT(((("exam3",76),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%144%50%153@%151@%135@2"])
  fun op keyPrinc_11 x = x
    val op keyPrinc_11 =
    ThmBind.DT(((("exam3",77),
                [("bool",[26,55,62,180]),("exam3",[67,68,69,70,71,72,73]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%102%92%23%92%28%106%108%153$1@2%153$0@3%110$1@$0@2|@|@2%102%96%24%96%29%106%108%151$1@2%151$0@3%114$1@$0@2|@|@2%91%22%91%27%106%108%135$1@2%135$0@3%109$1@$0@2|@|@3"])
  fun op keyPrinc_distinct x = x
    val op keyPrinc_distinct =
    ThmBind.DT(((("exam3",78),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("exam3",[67,68,69,70,71,72,73]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%102%96%29%92%23%187%108%153$0@2%151$1@3|@|@2%102%91%27%92%23%187%108%153$0@2%135$1@3|@|@2%91%27%96%24%187%108%151$0@2%135$1@3|@|@3"])
  fun op keyPrinc_case_cong x = x
    val op keyPrinc_case_cong =
    ThmBind.DT(((("exam3",79),
                [("bool",[26,180]),
                 ("exam3",[67,68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%90%4%90%9%83%35%88%42%82%45%115%102%108$4@$3@2%102%92%23%115%108$4@%153$0@3%105$3$0@2%38$0@3|@2%102%96%24%115%108$4@%151$0@3%105$2$0@2%44$0@3|@2%91%22%115%108$4@%135$0@3%105$1$0@2%46$0@3|@5%105%167$4@$2@$1@$0@2%167$3@%38@%44@%46@3|@|@|@|@|@"])
  fun op keyPrinc_nchotomy x = x
    val op keyPrinc_nchotomy =
    ThmBind.DT(((("exam3",80),
                [("bool",[26,180]),
                 ("exam3",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%90%51%160%129%54%108$1@%153$0@2|@2%160%130%60%108$1@%151$0@2|@2%128%53%108$1@%135$0@2|@3|@"])
  fun op keyPrinc_Axiom x = x
    val op keyPrinc_Axiom =
    ThmBind.DT(((("exam3",81),
                [("bool",[26,180]),("exam3",[67,68,69,70,71,72,73]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%83%40%88%42%82%45%119%47%102%92%23%105$1%153$0@3$4$0@2|@2%102%96%24%105$1%151$0@3$3$0@2|@2%91%22%105$1%135$0@3$2$0@2|@3|@|@|@|@"])
  fun op keyPrinc_induction x = x
    val op keyPrinc_induction =
    ThmBind.DT(((("exam3",82),
                [("bool",[26]),
                 ("exam3",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%81%16%115%102%92%54$1%153$0@2|@2%102%96%60$1%151$0@2|@2%91%53$1%135$0@2|@4%90%49$1$0@|@2|@"])
  fun op datatype_principals x = x
    val op datatype_principals =
    ThmBind.DT(((("exam3",91),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%144%58%149@%146@2"])
  fun op principals_11 x = x
    val op principals_11 =
    ThmBind.DT(((("exam3",92),
                [("bool",[26,55,62,180]),("exam3",[84,85,86,87,88]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%102%90%21%90%26%106%111%149$1@2%149$0@3%108$1@$0@2|@|@2%90%21%90%26%106%111%146$1@2%146$0@3%108$1@$0@2|@|@2"])
  fun op principals_distinct x = x
    val op principals_distinct =
    ThmBind.DT(((("exam3",93),
                [("bool",[25,26,46,53,62,180]),("exam3",[84,85,86,87,88]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%90%26%90%21%187%111%149$0@2%146$1@3|@|@"])
  fun op principals_case_cong x = x
    val op principals_case_cong =
    ThmBind.DT(((("exam3",94),
                [("bool",[26,180]),
                 ("exam3",[84,85,86,87,88,89])]),["DISK_THM"]),
               [ThmBind.read"%93%6%93%11%80%34%80%41%115%102%111$3@$2@2%102%90%21%115%111$3@%149$0@3%105$2$0@2%37$0@3|@2%90%21%115%111$3@%146$0@3%105$1$0@2%43$0@3|@4%105%176$3@$1@$0@2%176$2@%37@%43@3|@|@|@|@"])
  fun op principals_nchotomy x = x
    val op principals_nchotomy =
    ThmBind.DT(((("exam3",95),
                [("bool",[26,180]),
                 ("exam3",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%93%57%160%127%49%111$1@%149$0@2|@2%127%49%111$1@%146$0@2|@2|@"])
  fun op principals_Axiom x = x
    val op principals_Axiom =
    ThmBind.DT(((("exam3",96),
                [("bool",[26,180]),("exam3",[84,85,86,87,88]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%39%80%41%123%48%102%90%21%105$1%149$0@3$3$0@2|@2%90%21%105$1%146$0@3$2$0@2|@2|@|@|@"])
  fun op principals_induction x = x
    val op principals_induction =
    ThmBind.DT(((("exam3",97),
                [("bool",[26]),("exam3",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%85%18%115%102%90%49$1%149$0@2|@2%90%49$1%146$0@2|@3%93%55$1$0@|@2|@"])
  fun op RelayRuleLaunch x = x
    val op RelayRuleLaunch =
    ThmBind.DT(((("exam3",98),
                [("aclDrules",[4,16]),("aclrules",[23,24,58]),
                 ("bool",[25,57,62])]),["DISK_THM"]),
               [ThmBind.read"%115%184%98%2@%100%13@%14@3%164%148%149%151%145@4%178%165@4%115%184%98%2@%100%13@%14@3%180%148%149%153%134@4%148%149%151%145@4%178%165@4%115%184%98%2@%100%13@%14@3%185%179%148%146%153%134@4%148%149%151%145@5%178%165@4%115%184%98%2@%100%13@%14@3%166%178%165@2%178%169@4%115%184%98%2@%100%13@%14@3%186%148%146%153%134@4%148%149%153%134@6%184%98%2@%100%13@%14@3%185%179%148%146%153%140@4%148%149%151%150@5%178%169@8"])

  val _ = DB.bindl "exam3"
  [("commands_TY_DEF",commands_TY_DEF,DB.Def),
   ("commands_BIJ",commands_BIJ,DB.Def),
   ("commands_size_def",commands_size_def,DB.Def),
   ("commands_CASE",commands_CASE,DB.Def),
   ("roles_TY_DEF",roles_TY_DEF,DB.Def), ("roles_BIJ",roles_BIJ,DB.Def),
   ("roles_size_def",roles_size_def,DB.Def),
   ("roles_CASE",roles_CASE,DB.Def),
   ("people_TY_DEF",people_TY_DEF,DB.Def),
   ("people_BIJ",people_BIJ,DB.Def),
   ("people_size_def",people_size_def,DB.Def),
   ("people_CASE",people_CASE,DB.Def),
   ("keyPrinc_TY_DEF",keyPrinc_TY_DEF,DB.Def),
   ("keyPrinc_case_def",keyPrinc_case_def,DB.Def),
   ("keyPrinc_size_def",keyPrinc_size_def,DB.Def),
   ("principals_TY_DEF",principals_TY_DEF,DB.Def),
   ("principals_case_def",principals_case_def,DB.Def),
   ("principals_size_def",principals_size_def,DB.Def),
   ("num2commands_commands2num",num2commands_commands2num,DB.Thm),
   ("commands2num_num2commands",commands2num_num2commands,DB.Thm),
   ("num2commands_11",num2commands_11,DB.Thm),
   ("commands2num_11",commands2num_11,DB.Thm),
   ("num2commands_ONTO",num2commands_ONTO,DB.Thm),
   ("commands2num_ONTO",commands2num_ONTO,DB.Thm),
   ("num2commands_thm",num2commands_thm,DB.Thm),
   ("commands2num_thm",commands2num_thm,DB.Thm),
   ("commands_EQ_commands",commands_EQ_commands,DB.Thm),
   ("commands_case_def",commands_case_def,DB.Thm),
   ("datatype_commands",datatype_commands,DB.Thm),
   ("commands_distinct",commands_distinct,DB.Thm),
   ("commands_case_cong",commands_case_cong,DB.Thm),
   ("commands_nchotomy",commands_nchotomy,DB.Thm),
   ("commands_Axiom",commands_Axiom,DB.Thm),
   ("commands_induction",commands_induction,DB.Thm),
   ("num2roles_roles2num",num2roles_roles2num,DB.Thm),
   ("roles2num_num2roles",roles2num_num2roles,DB.Thm),
   ("num2roles_11",num2roles_11,DB.Thm),
   ("roles2num_11",roles2num_11,DB.Thm),
   ("num2roles_ONTO",num2roles_ONTO,DB.Thm),
   ("roles2num_ONTO",roles2num_ONTO,DB.Thm),
   ("num2roles_thm",num2roles_thm,DB.Thm),
   ("roles2num_thm",roles2num_thm,DB.Thm),
   ("roles_EQ_roles",roles_EQ_roles,DB.Thm),
   ("roles_case_def",roles_case_def,DB.Thm),
   ("datatype_roles",datatype_roles,DB.Thm),
   ("roles_distinct",roles_distinct,DB.Thm),
   ("roles_case_cong",roles_case_cong,DB.Thm),
   ("roles_nchotomy",roles_nchotomy,DB.Thm),
   ("roles_Axiom",roles_Axiom,DB.Thm),
   ("roles_induction",roles_induction,DB.Thm),
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
   ("people_distinct",people_distinct,DB.Thm),
   ("people_case_cong",people_case_cong,DB.Thm),
   ("people_nchotomy",people_nchotomy,DB.Thm),
   ("people_Axiom",people_Axiom,DB.Thm),
   ("people_induction",people_induction,DB.Thm),
   ("datatype_keyPrinc",datatype_keyPrinc,DB.Thm),
   ("keyPrinc_11",keyPrinc_11,DB.Thm),
   ("keyPrinc_distinct",keyPrinc_distinct,DB.Thm),
   ("keyPrinc_case_cong",keyPrinc_case_cong,DB.Thm),
   ("keyPrinc_nchotomy",keyPrinc_nchotomy,DB.Thm),
   ("keyPrinc_Axiom",keyPrinc_Axiom,DB.Thm),
   ("keyPrinc_induction",keyPrinc_induction,DB.Thm),
   ("datatype_principals",datatype_principals,DB.Thm),
   ("principals_11",principals_11,DB.Thm),
   ("principals_distinct",principals_distinct,DB.Thm),
   ("principals_case_cong",principals_case_cong,DB.Thm),
   ("principals_nchotomy",principals_nchotomy,DB.Thm),
   ("principals_Axiom",principals_Axiom,DB.Thm),
   ("principals_induction",principals_induction,DB.Thm),
   ("RelayRuleLaunch",RelayRuleLaunch,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exam3",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY5.exam3,8.commandsNTY5.exam3,5.rolesNTY5.exam3,6.peopleNTY5.exam3,8.keyPrincNTY5.exam3,10.principals"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exam3",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO12.commands2num4.%161OO12.num2commands4.%170OO2.go4.%165OO6.launch4.%169OO13.commands_size4.%163OO13.commands_CASE4.%162OO4.case4.%162OO9.roles2num4.%181OO9.num2roles4.%172OO8.Employee4.%145OO5.Relay4.%150OO10.roles_size4.%183OO10.roles_CASE4.%182OO4.case4.%182OO10.people2num4.%173OO10.num2people4.%171OO5.Alice4.%134OO3.Bob4.%140OO11.people_size4.%175OO11.people_CASE4.%174OO4.case4.%174OO5.Staff4.%153OO4.Role4.%151OO2.Ap4.%135OO13.keyPrinc_CASE4.%167OO13.keyPrinc_size4.%168OO4.case4.%167OO2.PR4.%149OO3.Key4.%146OO15.principals_CASE4.%176OO15.principals_size4.%177OO4.case4.%176"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val exam3_grammars = merge_grammars ["cipher", "aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="exam3"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val exam3_grammars = 
    Portable.## (addtyUDs,addtmUDs) exam3_grammars
  val _ = Parse.grammarDB_insert("exam3",exam3_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG commands_Axiom,
           case_def=commands_case_def,
           case_cong=commands_case_cong,
           induction=ORIG commands_induction,
           nchotomy=commands_nchotomy,
           size=SOME(Parse.Term`(exam3$commands_size) :exam3$commands -> num$num`,
                     ORIG commands_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME commands_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2commands_thm commands2num_thm NONE tyinfo0
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
          {ax=ORIG roles_Axiom,
           case_def=roles_case_def,
           case_cong=roles_case_cong,
           induction=ORIG roles_induction,
           nchotomy=roles_nchotomy,
           size=SOME(Parse.Term`(exam3$roles_size) :exam3$roles -> num$num`,
                     ORIG roles_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME roles_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2roles_thm roles2num_thm NONE tyinfo0
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
           size=SOME(Parse.Term`(exam3$people_size) :exam3$people -> num$num`,
                     ORIG people_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME people_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2people_thm people2num_thm NONE tyinfo0
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
          {ax=ORIG keyPrinc_Axiom,
           case_def=keyPrinc_case_def,
           case_cong=keyPrinc_case_cong,
           induction=ORIG keyPrinc_induction,
           nchotomy=keyPrinc_nchotomy,
           size=SOME(Parse.Term`(exam3$keyPrinc_size) :exam3$keyPrinc -> num$num`,
                     ORIG keyPrinc_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME keyPrinc_11,
           distinct=SOME keyPrinc_distinct,
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
          {ax=ORIG principals_Axiom,
           case_def=principals_case_def,
           case_cong=principals_case_cong,
           induction=ORIG principals_induction,
           nchotomy=principals_nchotomy,
           size=SOME(Parse.Term`(exam3$principals_size) :exam3$principals -> num$num`,
                     ORIG principals_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME principals_11,
           distinct=SOME principals_distinct,
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
val _ = Theory.load_complete "exam3"
end
