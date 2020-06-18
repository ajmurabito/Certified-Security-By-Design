structure simpleOpenerTheory :> simpleOpenerTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading simpleOpenerTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open smTheory
  in end;
  val _ = Theory.link_parents
          ("simpleOpener",
          Arbnum.fromString "1585283216",
          Arbnum.fromString "628511")
          [("sm",
           Arbnum.fromString "1585283215",
           Arbnum.fromString "416771")];
  val _ = Theory.incorporate_types "simpleOpener"
       [("state", 0), ("output", 0), ("command", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("simpleOpener", "state"),
   ID("simpleOpener", "output"), ID("simpleOpener", "command"),
   ID("min", "bool"), ID("list", "list"), ID("bool", "!"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("sm", "CFG"), ID("sm", "configuration"),
   ID("bool", "COND"), ID("list", "CONS"), ID("bool", "DATATYPE"),
   ID("arithmetic", "NUMERAL"), ID("simpleOpener", "S0"),
   ID("simpleOpener", "S1"), ID("sm", "TR"), ID("bool", "TYPE_DEFINITION"),
   ID("sm", "Trans"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("simpleOpener", "command2num"), ID("simpleOpener", "command_CASE"),
   ID("simpleOpener", "command_size"), ID("simpleOpener", "i0"),
   ID("simpleOpener", "i1"), ID("simpleOpener", "num2command"),
   ID("simpleOpener", "num2output"), ID("simpleOpener", "num2state"),
   ID("simpleOpener", "o0"), ID("simpleOpener", "o1"),
   ID("simpleOpener", "output2num"), ID("simpleOpener", "output_CASE"),
   ID("simpleOpener", "output_size"), ID("simpleOpener", "simpleOpenerns"),
   ID("simpleOpener", "simpleOpenerout"), ID("simpleOpener", "state2num"),
   ID("simpleOpener", "state_CASE"), ID("simpleOpener", "state_size"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 1, 5], TYOP [3], TYOP [4], TYOP [0, 8, 7],
   TYOP [0, 1, 9], TYOP [0, 8, 1], TYOP [0, 1, 11], TYOP [0, 7, 0],
   TYOP [0, 7, 5], TYOP [0, 0, 1], TYOP [0, 0, 7], TYOP [0, 0, 8],
   TYOP [0, 8, 0], TYOP [0, 8, 5], TYV "'state", TYV "'input",
   TYOP [0, 21, 20], TYOP [0, 20, 22], TYV "'output", TYOP [0, 21, 24],
   TYOP [0, 20, 25], TYOP [5], TYOP [0, 8, 27], TYOP [0, 7, 27],
   TYOP [0, 1, 27], TYOP [0, 1, 28], TYOP [0, 8, 28], TYOP [0, 8, 3],
   TYOP [0, 7, 3], TYOP [0, 1, 3], TYOP [6, 21], TYOP [6, 8], TYOP [6, 24],
   TYOP [6, 7], TYOP [0, 7, 29], TYOP [0, 1, 30], TYOP [0, 3, 27],
   TYOP [0, 42, 27], TYOP [0, 21, 27], TYOP [0, 44, 27], TYOP [0, 20, 27],
   TYOP [0, 46, 27], TYOP [0, 28, 27], TYOP [0, 48, 27], TYOP [0, 29, 27],
   TYOP [0, 50, 27], TYOP [0, 30, 27], TYOP [0, 52, 27], TYOP [0, 31, 27],
   TYOP [0, 54, 27], TYOP [0, 36, 27], TYOP [0, 56, 27], TYOP [0, 38, 27],
   TYOP [0, 58, 27], TYOP [0, 37, 27], TYOP [0, 60, 27], TYOP [0, 39, 27],
   TYOP [0, 62, 27], TYOP [0, 0, 27], TYOP [0, 64, 27], TYOP [0, 27, 27],
   TYOP [0, 27, 66], TYOP [0, 0, 64], TYOP [0, 3, 42], TYOP [0, 20, 46],
   TYOP [0, 36, 56], TYOP [0, 38, 58], TYOP [0, 37, 60], TYOP [0, 39, 62],
   TYOP [0, 26, 27], TYOP [0, 75, 27], TYOP [0, 23, 27], TYOP [0, 77, 27],
   TYOP [0, 33, 27], TYOP [0, 79, 27], TYOP [0, 18, 27], TYOP [0, 81, 27],
   TYOP [0, 34, 27], TYOP [0, 83, 27], TYOP [0, 13, 27], TYOP [0, 85, 27],
   TYOP [0, 35, 27], TYOP [0, 87, 27], TYOP [0, 2, 27], TYOP [0, 89, 27],
   TYOP [0, 0, 0], TYOP [17, 21, 24, 20], TYOP [0, 38, 92],
   TYOP [0, 20, 93], TYOP [0, 36, 94], TYOP [17, 8, 7, 1],
   TYOP [0, 39, 96], TYOP [0, 1, 97], TYOP [0, 37, 98], TYOP [0, 27, 5],
   TYOP [0, 36, 36], TYOP [0, 21, 101], TYOP [0, 38, 38],
   TYOP [0, 24, 103], TYOP [0, 37, 37], TYOP [0, 8, 105], TYOP [0, 39, 39],
   TYOP [0, 7, 107], TYOP [0, 92, 27], TYOP [0, 92, 109],
   TYOP [0, 21, 110], TYOP [0, 96, 27], TYOP [0, 96, 112],
   TYOP [0, 8, 113], TYOP [0, 64, 81], TYOP [0, 64, 85], TYOP [0, 64, 89],
   TYOP [0, 8, 41]]
  end
  val _ = Theory.incorporate_consts "simpleOpener" tyvector
     [("state_size", 2), ("state_CASE", 6), ("state2num", 2),
      ("simpleOpenerout", 10), ("simpleOpenerns", 12), ("output_size", 13),
      ("output_CASE", 14), ("output2num", 13), ("o1", 7), ("o0", 7),
      ("num2state", 15), ("num2output", 16), ("num2command", 17),
      ("i1", 8), ("i0", 8), ("command_size", 18), ("command_CASE", 19),
      ("command2num", 18), ("S1", 1), ("S0", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 8), TMV("M", 7), TMV("M", 1), TMV("M'", 8), TMV("M'", 7),
   TMV("M'", 1), TMV("NS", 23), TMV("Out", 26), TMV("P", 28), TMV("P", 29),
   TMV("P", 30), TMV("P", 31), TMV("a", 8), TMV("a", 7), TMV("a", 1),
   TMV("a'", 8), TMV("a'", 7), TMV("a'", 1), TMV("command", 32),
   TMV("f", 33), TMV("f", 34), TMV("f", 35), TMV("ins", 36),
   TMV("ins", 37), TMV("m", 0), TMV("n", 0), TMV("out1s", 38),
   TMV("out1s", 39), TMV("out2s", 38), TMV("out2s", 39), TMV("output", 40),
   TMV("outs", 39), TMV("r", 0), TMV("r'", 0), TMV("rep", 18),
   TMV("rep", 13), TMV("rep", 2), TMV("s", 1), TMV("s1", 20), TMV("s1", 1),
   TMV("s2", 20), TMV("state", 41), TMV("v", 1), TMV("v0", 3),
   TMV("v0'", 3), TMV("v1", 3), TMV("v1", 8), TMV("v1'", 3), TMV("x", 21),
   TMV("x", 8), TMV("x", 7), TMV("x", 1), TMV("x0", 3), TMV("x1", 3),
   TMV("x1s", 36), TMV("x1s", 37), TMV("x2s", 36), TMV("x2s", 37),
   TMC(7, 43), TMC(7, 45), TMC(7, 47), TMC(7, 48), TMC(7, 49), TMC(7, 51),
   TMC(7, 53), TMC(7, 55), TMC(7, 57), TMC(7, 59), TMC(7, 61), TMC(7, 63),
   TMC(7, 65), TMC(7, 50), TMC(7, 52), TMC(8, 67), TMC(9, 0), TMC(10, 68),
   TMC(11, 69), TMC(11, 70), TMC(11, 67), TMC(11, 32), TMC(11, 71),
   TMC(11, 72), TMC(11, 73), TMC(11, 74), TMC(11, 68), TMC(11, 40),
   TMC(11, 41), TMC(12, 67), TMC(13, 48), TMC(13, 76), TMC(13, 78),
   TMC(13, 80), TMC(13, 82), TMC(13, 84), TMC(13, 86), TMC(13, 88),
   TMC(13, 90), TMC(13, 57), TMC(13, 61), TMC(13, 65), TMC(13, 50),
   TMC(13, 52), TMC(14, 91), TMC(15, 91), TMC(16, 95), TMC(16, 99),
   TMC(18, 100), TMC(19, 102), TMC(19, 104), TMC(19, 106), TMC(19, 108),
   TMC(20, 66), TMC(21, 91), TMC(22, 1), TMC(23, 1), TMC(24, 111),
   TMC(24, 114), TMC(25, 115), TMC(25, 116), TMC(25, 117), TMC(26, 118),
   TMC(27, 0), TMC(28, 67), TMC(29, 18), TMC(30, 19), TMC(31, 18),
   TMC(32, 8), TMC(33, 8), TMC(34, 17), TMC(35, 16), TMC(36, 15),
   TMC(37, 7), TMC(38, 7), TMC(39, 13), TMC(40, 14), TMC(41, 13),
   TMC(42, 12), TMC(43, 10), TMC(44, 2), TMC(45, 6), TMC(46, 2),
   TMC(47, 66)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op command_TY_DEF x = x
    val op command_TY_DEF =
    ThmBind.DT(((("simpleOpener",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%92%34%117%25%75$0@%112%103%121@3|@$0@|@"])
  fun op command_BIJ x = x
    val op command_BIJ =
    ThmBind.DT(((("simpleOpener",1),
                [("bool",[116]),("simpleOpener",[0])]),["DISK_THM"]),
               [ThmBind.read"%73%61%12%79%128%123$0@3$0@|@2%70%32%78%25%75$0@%112%103%121@3|$0@2%84%123%128$0@3$0@2|@2"])


  fun op command_size_def x = x
    val op command_size_def =
    ThmBind.DT(((("simpleOpener",13),[]),[]),
               [ThmBind.read"%61%49%84%125$0@2%74@|@"])
  fun op command_CASE x = x
    val op command_CASE =
    ThmBind.DT(((("simpleOpener",14),[]),[]),
               [ThmBind.read"%61%49%58%43%58%45%76%124$2@$1@$0@2%24%106%84$0@%74@2$2@$1@|%123$2@3|@|@|@"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("simpleOpener",23),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%96%36%119%25%75$0@%112%103%121@3|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("simpleOpener",24),
                [("bool",[116]),("simpleOpener",[23])]),["DISK_THM"]),
               [ThmBind.read"%73%72%14%86%130%138$0@3$0@|@2%70%32%78%25%75$0@%112%103%121@3|$0@2%84%138%130$0@3$0@2|@2"])


  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("simpleOpener",36),[]),[]),
               [ThmBind.read"%72%51%84%140$0@2%74@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("simpleOpener",37),[]),[]),
               [ThmBind.read"%72%51%58%43%58%45%76%139$2@$1@$0@2%24%106%84$0@%74@2$2@$1@|%138$2@3|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("simpleOpener",46),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%94%35%118%25%75$0@%112%103%121@3|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("simpleOpener",47),
                [("bool",[116]),("simpleOpener",[46])]),["DISK_THM"]),
               [ThmBind.read"%73%71%13%85%129%133$0@3$0@|@2%70%32%78%25%75$0@%112%103%121@3|$0@2%84%133%129$0@3$0@2|@2"])


  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("simpleOpener",59),[]),[]),
               [ThmBind.read"%71%50%84%135$0@2%74@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("simpleOpener",60),[]),[]),
               [ThmBind.read"%71%50%58%43%58%45%76%134$2@$1@$0@2%24%106%84$0@%74@2$2@$1@|%133$2@3|@|@|@"])
  fun op num2command_command2num x = x
    val op num2command_command2num =
    ThmBind.DT(((("simpleOpener",2),[("simpleOpener",[1])]),["DISK_THM"]),
               [ThmBind.read"%61%12%79%128%123$0@3$0@|@"])
  fun op command2num_num2command x = x
    val op command2num_num2command =
    ThmBind.DT(((("simpleOpener",3),[("simpleOpener",[1])]),["DISK_THM"]),
               [ThmBind.read"%70%32%78%75$0@%112%103%121@4%84%123%128$0@3$0@2|@"])
  fun op num2command_11 x = x
    val op num2command_11 =
    ThmBind.DT(((("simpleOpener",4),
                [("bool",[26]),("simpleOpener",[1])]),["DISK_THM"]),
               [ThmBind.read"%70%32%70%33%87%75$1@%112%103%121@4%87%75$0@%112%103%121@4%78%79%128$1@2%128$0@3%84$1@$0@4|@|@"])
  fun op command2num_11 x = x
    val op command2num_11 =
    ThmBind.DT(((("simpleOpener",5),
                [("bool",[26]),("simpleOpener",[1])]),["DISK_THM"]),
               [ThmBind.read"%61%12%61%15%78%84%123$1@2%123$0@3%79$1@$0@2|@|@"])
  fun op num2command_ONTO x = x
    val op num2command_ONTO =
    ThmBind.DT(((("simpleOpener",6),
                [("bool",[25,62]),("simpleOpener",[1])]),["DISK_THM"]),
               [ThmBind.read"%61%12%99%32%73%79$1@%128$0@3%75$0@%112%103%121@4|@|@"])
  fun op command2num_ONTO x = x
    val op command2num_ONTO =
    ThmBind.DT(((("simpleOpener",7),
                [("bool",[26]),("simpleOpener",[1])]),["DISK_THM"]),
               [ThmBind.read"%70%32%78%75$0@%112%103%121@4%88%12%84$1@%123$0@2|@2|@"])
  fun op num2command_thm x = x
    val op num2command_thm =
    ThmBind.DT(((("simpleOpener",10),[("simpleOpener",[8,9])]),[]),
               [ThmBind.read"%73%79%128%74@2%126@2%79%128%112%102%121@4%127@2"])
  fun op command2num_thm x = x
    val op command2num_thm =
    ThmBind.DT(((("simpleOpener",11),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("simpleOpener",[3,8,9])]),["DISK_THM"]),
               [ThmBind.read"%73%84%123%126@2%74@2%84%123%127@2%112%102%121@4"])
  fun op command_EQ_command x = x
    val op command_EQ_command =
    ThmBind.DT(((("simpleOpener",12),
                [("bool",[57]),("simpleOpener",[5])]),["DISK_THM"]),
               [ThmBind.read"%61%12%61%15%78%79$1@$0@2%84%123$1@2%123$0@3|@|@"])
  fun op command_case_def x = x
    val op command_case_def =
    ThmBind.DT(((("simpleOpener",15),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("simpleOpener",[11,14])]),["DISK_THM"]),
               [ThmBind.read"%73%58%43%58%45%76%124%126@$1@$0@2$1@|@|@2%58%43%58%45%76%124%127@$1@$0@2$0@|@|@2"])
  fun op datatype_command x = x
    val op datatype_command =
    ThmBind.DT(((("simpleOpener",16),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%111%18%126@%127@2"])
  fun op command_distinct x = x
    val op command_distinct =
    ThmBind.DT(((("simpleOpener",17),
                [("numeral",[3,6]),
                 ("simpleOpener",[11,12])]),["DISK_THM"]),
               [ThmBind.read"%141%79%126@%127@2"])
  fun op command_case_cong x = x
    val op command_case_cong =
    ThmBind.DT(((("simpleOpener",18),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[6,8,9,15])]),["DISK_THM"]),
               [ThmBind.read"%61%0%61%3%58%43%58%45%87%73%79$3@$2@2%73%87%79$2@%126@2%76$1@%44@3%87%79$2@%127@2%76$0@%47@5%76%124$3@$1@$0@2%124$2@%44@%47@3|@|@|@|@"])
  fun op command_nchotomy x = x
    val op command_nchotomy =
    ThmBind.DT(((("simpleOpener",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[6,8,9])]),["DISK_THM"]),
               [ThmBind.read"%61%12%122%79$0@%126@2%79$0@%127@2|@"])
  fun op command_Axiom x = x
    val op command_Axiom =
    ThmBind.DT(((("simpleOpener",20),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("simpleOpener",[11])]),["DISK_THM"]),
               [ThmBind.read"%58%52%58%53%91%19%73%76$0%126@2$2@2%76$0%127@2$1@2|@|@|@"])
  fun op command_induction x = x
    val op command_induction =
    ThmBind.DT(((("simpleOpener",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[6,8,9])]),["DISK_THM"]),
               [ThmBind.read"%62%8%87%73$0%126@2$0%127@3%61%12$1$0@|@2|@"])
  fun op command_distinct_clauses x = x
    val op command_distinct_clauses =
    ThmBind.DT(((("simpleOpener",22),
                [("numeral",[3,6]),
                 ("simpleOpener",[11,12])]),["DISK_THM"]),
               [ThmBind.read"%141%79%126@%127@2"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("simpleOpener",25),
                [("simpleOpener",[24])]),["DISK_THM"]),
               [ThmBind.read"%72%14%86%130%138$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("simpleOpener",26),
                [("simpleOpener",[24])]),["DISK_THM"]),
               [ThmBind.read"%70%32%78%75$0@%112%103%121@4%84%138%130$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("simpleOpener",27),
                [("bool",[26]),("simpleOpener",[24])]),["DISK_THM"]),
               [ThmBind.read"%70%32%70%33%87%75$1@%112%103%121@4%87%75$0@%112%103%121@4%78%86%130$1@2%130$0@3%84$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("simpleOpener",28),
                [("bool",[26]),("simpleOpener",[24])]),["DISK_THM"]),
               [ThmBind.read"%72%14%72%17%78%84%138$1@2%138$0@3%86$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("simpleOpener",29),
                [("bool",[25,62]),("simpleOpener",[24])]),["DISK_THM"]),
               [ThmBind.read"%72%14%99%32%73%86$1@%130$0@3%75$0@%112%103%121@4|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("simpleOpener",30),
                [("bool",[26]),("simpleOpener",[24])]),["DISK_THM"]),
               [ThmBind.read"%70%32%78%75$0@%112%103%121@4%101%14%84$1@%138$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("simpleOpener",33),[("simpleOpener",[31,32])]),[]),
               [ThmBind.read"%73%86%130%74@2%113@2%86%130%112%102%121@4%114@2"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("simpleOpener",34),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("simpleOpener",[26,31,32])]),["DISK_THM"]),
               [ThmBind.read"%73%84%138%113@2%74@2%84%138%114@2%112%102%121@4"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("simpleOpener",35),
                [("bool",[57]),("simpleOpener",[28])]),["DISK_THM"]),
               [ThmBind.read"%72%14%72%17%78%86$1@$0@2%84%138$1@2%138$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("simpleOpener",38),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("simpleOpener",[34,37])]),["DISK_THM"]),
               [ThmBind.read"%73%58%43%58%45%76%139%113@$1@$0@2$1@|@|@2%58%43%58%45%76%139%114@$1@$0@2$0@|@|@2"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("simpleOpener",39),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%111%41%113@%114@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("simpleOpener",40),
                [("numeral",[3,6]),
                 ("simpleOpener",[34,35])]),["DISK_THM"]),
               [ThmBind.read"%141%86%113@%114@2"])
  fun op state_case_cong x = x
    val op state_case_cong =
    ThmBind.DT(((("simpleOpener",41),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[29,31,32,38])]),["DISK_THM"]),
               [ThmBind.read"%72%2%72%5%58%43%58%45%87%73%86$3@$2@2%73%87%86$2@%113@2%76$1@%44@3%87%86$2@%114@2%76$0@%47@5%76%139$3@$1@$0@2%139$2@%44@%47@3|@|@|@|@"])
  fun op state_nchotomy x = x
    val op state_nchotomy =
    ThmBind.DT(((("simpleOpener",42),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[29,31,32])]),["DISK_THM"]),
               [ThmBind.read"%72%14%122%86$0@%113@2%86$0@%114@2|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("simpleOpener",43),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("simpleOpener",[34])]),["DISK_THM"]),
               [ThmBind.read"%58%52%58%53%95%21%73%76$0%113@2$2@2%76$0%114@2$1@2|@|@|@"])
  fun op state_induction x = x
    val op state_induction =
    ThmBind.DT(((("simpleOpener",44),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[29,31,32])]),["DISK_THM"]),
               [ThmBind.read"%64%10%87%73$0%113@2$0%114@3%72%14$1$0@|@2|@"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("simpleOpener",45),
                [("numeral",[3,6]),
                 ("simpleOpener",[34,35])]),["DISK_THM"]),
               [ThmBind.read"%141%86%113@%114@2"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("simpleOpener",48),
                [("simpleOpener",[47])]),["DISK_THM"]),
               [ThmBind.read"%71%13%85%129%133$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("simpleOpener",49),
                [("simpleOpener",[47])]),["DISK_THM"]),
               [ThmBind.read"%70%32%78%75$0@%112%103%121@4%84%133%129$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("simpleOpener",50),
                [("bool",[26]),("simpleOpener",[47])]),["DISK_THM"]),
               [ThmBind.read"%70%32%70%33%87%75$1@%112%103%121@4%87%75$0@%112%103%121@4%78%85%129$1@2%129$0@3%84$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("simpleOpener",51),
                [("bool",[26]),("simpleOpener",[47])]),["DISK_THM"]),
               [ThmBind.read"%71%13%71%16%78%84%133$1@2%133$0@3%85$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("simpleOpener",52),
                [("bool",[25,62]),("simpleOpener",[47])]),["DISK_THM"]),
               [ThmBind.read"%71%13%99%32%73%85$1@%129$0@3%75$0@%112%103%121@4|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("simpleOpener",53),
                [("bool",[26]),("simpleOpener",[47])]),["DISK_THM"]),
               [ThmBind.read"%70%32%78%75$0@%112%103%121@4%100%13%84$1@%133$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("simpleOpener",56),[("simpleOpener",[54,55])]),[]),
               [ThmBind.read"%73%85%129%74@2%131@2%85%129%112%102%121@4%132@2"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("simpleOpener",57),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("simpleOpener",[49,54,55])]),["DISK_THM"]),
               [ThmBind.read"%73%84%133%131@2%74@2%84%133%132@2%112%102%121@4"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("simpleOpener",58),
                [("bool",[57]),("simpleOpener",[51])]),["DISK_THM"]),
               [ThmBind.read"%71%13%71%16%78%85$1@$0@2%84%133$1@2%133$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("simpleOpener",61),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("simpleOpener",[57,60])]),["DISK_THM"]),
               [ThmBind.read"%73%58%43%58%45%76%134%131@$1@$0@2$1@|@|@2%58%43%58%45%76%134%132@$1@$0@2$0@|@|@2"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("simpleOpener",62),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%111%30%131@%132@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("simpleOpener",63),
                [("numeral",[3,6]),
                 ("simpleOpener",[57,58])]),["DISK_THM"]),
               [ThmBind.read"%141%85%131@%132@2"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("simpleOpener",64),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[52,54,55,61])]),["DISK_THM"]),
               [ThmBind.read"%71%1%71%4%58%43%58%45%87%73%85$3@$2@2%73%87%85$2@%131@2%76$1@%44@3%87%85$2@%132@2%76$0@%47@5%76%134$3@$1@$0@2%134$2@%44@%47@3|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("simpleOpener",65),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[52,54,55])]),["DISK_THM"]),
               [ThmBind.read"%71%13%122%85$0@%131@2%85$0@%132@2|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("simpleOpener",66),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("simpleOpener",[57])]),["DISK_THM"]),
               [ThmBind.read"%58%52%58%53%93%20%73%76$0%131@2$2@2%76$0%132@2$1@2|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("simpleOpener",67),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleOpener",[52,54,55])]),["DISK_THM"]),
               [ThmBind.read"%63%9%87%73$0%131@2$0%132@3%71%13$1$0@|@2|@"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("simpleOpener",68),
                [("numeral",[3,6]),
                 ("simpleOpener",[57,58])]),["DISK_THM"]),
               [ThmBind.read"%141%85%131@%132@2"])
  fun op simpleOpenerns_ind x = x
    val op simpleOpenerns_ind =
    ThmBind.DT(((("simpleOpener",71),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,92,95,100,
                  103,104,106]),("numeral",[3,5,6,7,8,15,16]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("simpleOpener",[6,8,9,29,31,32])]),["DISK_THM"]),
               [ThmBind.read"%65%11%87%73$0%113@%127@2%73$0%114@%126@2%73$0%113@%126@2$0%114@%127@5%72%42%61%46$2$1@$0@|@|@2|@"])
  fun op simpleOpenerns_def x = x
    val op simpleOpenerns_def =
    ThmBind.DT(((("simpleOpener",72),
                [("bool",[15,57]),("combin",[19]),("pair",[49]),
                 ("relation",[113,132]),
                 ("simpleOpener",[15,38,69,70])]),["DISK_THM"]),
               [ThmBind.read"%73%86%136%113@%127@2%114@2%86%136%114@%126@2%113@2"])
  fun op simpleOpenerout_ind x = x
    val op simpleOpenerout_ind =
    ThmBind.DT(((("simpleOpener",75),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,92,95,100,
                  103,104,106]),("numeral",[3,5,6,7,8,15,16]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("simpleOpener",[6,8,9,29,31,32])]),["DISK_THM"]),
               [ThmBind.read"%65%11%87%73$0%113@%127@2%73$0%114@%126@2%73$0%113@%126@2$0%114@%127@5%72%42%61%46$2$1@$0@|@|@2|@"])
  fun op simpleOpenerout_def x = x
    val op simpleOpenerout_def =
    ThmBind.DT(((("simpleOpener",76),
                [("bool",[15,57]),("combin",[19]),("pair",[49]),
                 ("relation",[113,132]),
                 ("simpleOpener",[15,38,73,74])]),["DISK_THM"]),
               [ThmBind.read"%73%85%137%113@%127@2%132@2%85%137%114@%126@2%131@2"])
  fun op simpleOpenerTR_rules x = x
    val op simpleOpenerTR_rules =
    ThmBind.DT(((("simpleOpener",77),[("sm",[20])]),["DISK_THM"]),
               [ThmBind.read"%72%37%61%49%68%23%69%31%116$2@%105%109$2@$1@2$3@$0@2%105$1@%136$3@$2@2%110%137$3@$2@2$0@3|@|@|@|@"])
  fun op simpleOpenerTR_clauses x = x
    val op simpleOpenerTR_clauses =
    ThmBind.DT(((("simpleOpener",78),[("sm",[24])]),["DISK_THM"]),
               [ThmBind.read"%73%59%48%66%54%60%38%67%26%66%56%67%28%60%40%78%115$6@%104$5@$4@$3@2%104$2@$0@$1@3%90%6%89%7%97%22%73%80$8@%107$9@$0@3%73%80$5@$0@2%73%77$3@$2$7@$9@3%81$4@%108$1$7@$9@2$6@5|@|@|@2|@|@|@|@|@|@|@2%61%49%68%55%72%39%69%27%68%57%69%29%78%116$5@%105$4@$3@$2@2%105$1@%136$3@$5@2%110%137$3@$5@2$0@4%98%23%73%82$5@%109$6@$0@3%73%82$2@$0@2%83$1@$3@3|@2|@|@|@|@|@|@2"])
  fun op simpleOpenerTrans_Equiv_TR x = x
    val op simpleOpenerTrans_Equiv_TR =
    ThmBind.DT(((("simpleOpener",79),[("sm",[29])]),["DISK_THM"]),
               [ThmBind.read"%78%116%49@%105%109%49@%23@2%37@%31@2%105%23@%136%37@%49@2%110%137%37@%49@2%31@4%120%49@%37@%136%37@%49@3"])
  fun op simpleCounter_rules x = x
    val op simpleCounter_rules =
    ThmBind.DT(((("simpleOpener",80),
                [("bool",[15,57]),("combin",[19]),("pair",[49]),
                 ("relation",[113,132]),
                 ("simpleOpener",[15,38,69,70,73,74]),
                 ("sm",[20])]),["DISK_THM"]),
               [ThmBind.read"%73%68%23%69%31%116%127@%105%109%127@$1@2%113@$0@2%105$1@%114@%110%132@$0@3|@|@2%68%23%69%31%116%126@%105%109%126@$1@2%114@$0@2%105$1@%113@%110%131@$0@3|@|@2"])

  val _ = DB.bindl "simpleOpener"
  [("command_TY_DEF",command_TY_DEF,DB.Def),
   ("command_BIJ",command_BIJ,DB.Def),
   ("command_size_def",command_size_def,DB.Def),
   ("command_CASE",command_CASE,DB.Def),
   ("state_TY_DEF",state_TY_DEF,DB.Def), ("state_BIJ",state_BIJ,DB.Def),
   ("state_size_def",state_size_def,DB.Def),
   ("state_CASE",state_CASE,DB.Def),
   ("output_TY_DEF",output_TY_DEF,DB.Def),
   ("output_BIJ",output_BIJ,DB.Def),
   ("output_size_def",output_size_def,DB.Def),
   ("output_CASE",output_CASE,DB.Def),
   ("num2command_command2num",num2command_command2num,DB.Thm),
   ("command2num_num2command",command2num_num2command,DB.Thm),
   ("num2command_11",num2command_11,DB.Thm),
   ("command2num_11",command2num_11,DB.Thm),
   ("num2command_ONTO",num2command_ONTO,DB.Thm),
   ("command2num_ONTO",command2num_ONTO,DB.Thm),
   ("num2command_thm",num2command_thm,DB.Thm),
   ("command2num_thm",command2num_thm,DB.Thm),
   ("command_EQ_command",command_EQ_command,DB.Thm),
   ("command_case_def",command_case_def,DB.Thm),
   ("datatype_command",datatype_command,DB.Thm),
   ("command_distinct",command_distinct,DB.Thm),
   ("command_case_cong",command_case_cong,DB.Thm),
   ("command_nchotomy",command_nchotomy,DB.Thm),
   ("command_Axiom",command_Axiom,DB.Thm),
   ("command_induction",command_induction,DB.Thm),
   ("command_distinct_clauses",command_distinct_clauses,DB.Thm),
   ("num2state_state2num",num2state_state2num,DB.Thm),
   ("state2num_num2state",state2num_num2state,DB.Thm),
   ("num2state_11",num2state_11,DB.Thm),
   ("state2num_11",state2num_11,DB.Thm),
   ("num2state_ONTO",num2state_ONTO,DB.Thm),
   ("state2num_ONTO",state2num_ONTO,DB.Thm),
   ("num2state_thm",num2state_thm,DB.Thm),
   ("state2num_thm",state2num_thm,DB.Thm),
   ("state_EQ_state",state_EQ_state,DB.Thm),
   ("state_case_def",state_case_def,DB.Thm),
   ("datatype_state",datatype_state,DB.Thm),
   ("state_distinct",state_distinct,DB.Thm),
   ("state_case_cong",state_case_cong,DB.Thm),
   ("state_nchotomy",state_nchotomy,DB.Thm),
   ("state_Axiom",state_Axiom,DB.Thm),
   ("state_induction",state_induction,DB.Thm),
   ("state_distinct_clauses",state_distinct_clauses,DB.Thm),
   ("num2output_output2num",num2output_output2num,DB.Thm),
   ("output2num_num2output",output2num_num2output,DB.Thm),
   ("num2output_11",num2output_11,DB.Thm),
   ("output2num_11",output2num_11,DB.Thm),
   ("num2output_ONTO",num2output_ONTO,DB.Thm),
   ("output2num_ONTO",output2num_ONTO,DB.Thm),
   ("num2output_thm",num2output_thm,DB.Thm),
   ("output2num_thm",output2num_thm,DB.Thm),
   ("output_EQ_output",output_EQ_output,DB.Thm),
   ("output_case_def",output_case_def,DB.Thm),
   ("datatype_output",datatype_output,DB.Thm),
   ("output_distinct",output_distinct,DB.Thm),
   ("output_case_cong",output_case_cong,DB.Thm),
   ("output_nchotomy",output_nchotomy,DB.Thm),
   ("output_Axiom",output_Axiom,DB.Thm),
   ("output_induction",output_induction,DB.Thm),
   ("output_distinct_clauses",output_distinct_clauses,DB.Thm),
   ("simpleOpenerns_ind",simpleOpenerns_ind,DB.Thm),
   ("simpleOpenerns_def",simpleOpenerns_def,DB.Thm),
   ("simpleOpenerout_ind",simpleOpenerout_ind,DB.Thm),
   ("simpleOpenerout_def",simpleOpenerout_def,DB.Thm),
   ("simpleOpenerTR_rules",simpleOpenerTR_rules,DB.Thm),
   ("simpleOpenerTR_clauses",simpleOpenerTR_clauses,DB.Thm),
   ("simpleOpenerTrans_Equiv_TR",simpleOpenerTrans_Equiv_TR,DB.Thm),
   ("simpleCounter_rules",simpleCounter_rules,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "simpleOpener",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "simpleOpener.simpleOpenerns_def simpleOpener.simpleOpenerout_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "simpleOpener",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY12.simpleOpener,7.commandNTY12.simpleOpener,5.stateNTY12.simpleOpener,6.output"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "simpleOpener",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO11.command2num4.%123OO11.num2command4.%128OO2.i04.%126OO2.i14.%127OO12.command_size4.%125OO12.command_CASE4.%124OO4.case4.%124OO9.state2num4.%138OO9.num2state4.%130OO2.S04.%113OO2.S14.%114OO10.state_size4.%140OO10.state_CASE4.%139OO4.case4.%139OO10.output2num4.%133OO10.num2output4.%129OO2.o04.%131OO2.o14.%132OO11.output_size4.%135OO11.output_CASE4.%134OO4.case4.%134OO14.simpleOpenerns4.%136OO15.simpleOpenerout4.%137"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val simpleOpener_grammars = merge_grammars ["sm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="simpleOpener"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val simpleOpener_grammars = 
    Portable.## (addtyUDs,addtmUDs) simpleOpener_grammars
  val _ = Parse.grammarDB_insert("simpleOpener",simpleOpener_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG command_Axiom,
           case_def=command_case_def,
           case_cong=command_case_cong,
           induction=ORIG command_induction,
           nchotomy=command_nchotomy,
           size=SOME(Parse.Term`(simpleOpener$command_size) :simpleOpener$command -> num$num`,
                     ORIG command_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME command_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2command_thm command2num_thm NONE tyinfo0
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
          {ax=ORIG state_Axiom,
           case_def=state_case_def,
           case_cong=state_case_cong,
           induction=ORIG state_induction,
           nchotomy=state_nchotomy,
           size=SOME(Parse.Term`(simpleOpener$state_size) :simpleOpener$state -> num$num`,
                     ORIG state_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME state_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2state_thm state2num_thm NONE tyinfo0
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
          {ax=ORIG output_Axiom,
           case_def=output_case_def,
           case_cong=output_case_cong,
           induction=ORIG output_induction,
           nchotomy=output_nchotomy,
           size=SOME(Parse.Term`(simpleOpener$output_size) :simpleOpener$output -> num$num`,
                     ORIG output_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME output_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2output_thm output2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "simpleOpener"
end
