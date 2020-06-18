structure nexpTheory :> nexpTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading nexpTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open indexedListsTheory patternMatchesTheory
  in end;
  val _ = Theory.link_parents
          ("nexp",
          Arbnum.fromString "1581825557",
          Arbnum.fromString "890703")
          [("indexedLists",
           Arbnum.fromString "1503148856",
           Arbnum.fromString "404777"),
           ("patternMatches",
           Arbnum.fromString "1503148884",
           Arbnum.fromString "20925")];
  val _ = Theory.incorporate_types "nexp" [("nexp", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("nexp", "nexp"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "ARB"), ID("nexp", "Add"),
   ID("arithmetic", "BIT1"), ID("ind_type", "BOTTOM"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("ind_type", "FCONS"), ID("nexp", "Mult"),
   ID("arithmetic", "NUMERAL"), ID("nexp", "Num"), ID("num", "SUC"),
   ID("nexp", "Sub"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("nexp", "nexpVal"),
   ID("nexp", "nexp_CASE"), ID("nexp", "nexp_size"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 1, 3],
   TYOP [0, 1, 4], TYOP [0, 5, 3], TYOP [0, 5, 6], TYOP [0, 5, 7],
   TYOP [0, 0, 3], TYOP [0, 9, 8], TYOP [0, 1, 10], TYOP [0, 1, 1],
   TYOP [0, 1, 12], TYOP [0, 0, 1], TYOP [3], TYOP [4, 0],
   TYOP [0, 16, 15], TYOP [0, 1, 15], TYOP [0, 3, 3], TYOP [0, 3, 19],
   TYOP [0, 1, 20], TYOP [0, 1, 21], TYOP [0, 13, 15], TYOP [0, 13, 23],
   TYOP [0, 13, 24], TYOP [0, 14, 25], TYOP [0, 1, 16], TYOP [0, 18, 15],
   TYOP [0, 28, 15], TYOP [0, 5, 15], TYOP [0, 30, 15], TYOP [0, 22, 15],
   TYOP [0, 32, 15], TYOP [0, 9, 15], TYOP [0, 34, 15], TYOP [0, 17, 15],
   TYOP [0, 36, 15], TYOP [0, 0, 15], TYOP [0, 38, 15], TYOP [0, 0, 0],
   TYOP [0, 0, 40], TYOP [0, 15, 15], TYOP [0, 15, 42], TYOP [0, 3, 15],
   TYOP [0, 3, 44], TYOP [0, 1, 18], TYOP [0, 0, 38], TYOP [0, 16, 17],
   TYOP [0, 4, 15], TYOP [0, 49, 15], TYOP [0, 27, 15], TYOP [0, 51, 15],
   TYOP [0, 0, 16], TYOP [0, 53, 16], TYOP [0, 0, 54], TYOP [0, 0, 55],
   TYOP [0, 53, 53], TYOP [0, 16, 57], TYOP [0, 17, 51]]
  end
  val _ = Theory.incorporate_consts "nexp" tyvector
     [("nexp_size", 2), ("nexp_CASE", 11), ("nexpVal", 2), ("Sub", 13),
      ("Num", 14), ("Mult", 13), ("Add", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'nexp'", 17), TMV("M", 1), TMV("M'", 1), TMV("P", 18), TMV("a", 0),
   TMV("a'", 0), TMV("a0", 1), TMV("a0", 16), TMV("a0'", 1),
   TMV("a0'", 16), TMV("a1", 1), TMV("a1", 16), TMV("a1'", 1), TMV("f", 9),
   TMV("f'", 9), TMV("f0", 9), TMV("f1", 5), TMV("f1", 22), TMV("f1'", 5),
   TMV("f2", 5), TMV("f2", 22), TMV("f2'", 5), TMV("f3", 5), TMV("f3", 22),
   TMV("f3'", 5), TMV("fn", 4), TMV("n", 1), TMV("n", 0), TMV("n0", 1),
   TMV("n1", 1), TMV("n2", 1), TMV("n3", 1), TMV("nexp", 26), TMV("nn", 1),
   TMV("num", 0), TMV("rep", 27), TMC(5, 29), TMC(5, 31), TMC(5, 33),
   TMC(5, 35), TMC(5, 37), TMC(5, 28), TMC(5, 39), TMC(5, 36), TMC(6, 41),
   TMC(7, 41), TMC(8, 41), TMC(9, 43), TMC(10, 0), TMC(11, 45),
   TMC(11, 43), TMC(11, 46), TMC(11, 47), TMC(11, 48), TMC(12, 43),
   TMC(13, 50), TMC(13, 52), TMC(13, 28), TMC(13, 39), TMC(13, 36),
   TMC(14, 0), TMC(15, 13), TMC(16, 40), TMC(17, 16), TMC(18, 56),
   TMC(19, 42), TMC(20, 58), TMC(21, 13), TMC(22, 40), TMC(23, 14),
   TMC(24, 40), TMC(25, 13), TMC(26, 59), TMC(27, 0), TMC(28, 43),
   TMC(29, 2), TMC(30, 11), TMC(31, 2), TMC(32, 42)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op nexp_TY_DEF x = x
    val op nexp_TY_DEF =
    ThmBind.DT(((("nexp",0),
                [("bool",[14,25,26,52,131,132,137])]),["DISK_THM"]),
               [ThmBind.read"%56%35%72%9%40%0%54%43%9%54%74%58%4%53$1@%4%64%48@$0@%27%63|@|$0@2|@2%74%59%7%59%11%47%53$2@%7%11%64%70%48@2%60@%66$1@%66$0@%27%63|@3||$1@$0@3%47$3$1@2$3$0@3|@|@2%74%59%7%59%11%47%53$2@%7%11%64%70%70%48@3%60@%66$1@%66$0@%27%63|@3||$1@$0@3%47$3$1@2$3$0@3|@|@2%59%7%59%11%47%53$2@%7%11%64%70%70%70%48@4%60@%66$1@%66$0@%27%63|@3||$1@$0@3%47$3$1@2$3$0@3|@|@5$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op nexp_case_def x = x
    val op nexp_case_def =
    ThmBind.DT(((("nexp",10),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%47%42%4%39%13%37%16%37%19%37%22%49%76%69$4@2$3@$2@$1@$0@2$3$4@2|@|@|@|@|@2%47%41%6%41%10%39%13%37%16%37%19%37%22%49%76%61$5@$4@2$3@$2@$1@$0@2$2$5@$4@2|@|@|@|@|@|@2%47%41%6%41%10%39%13%37%16%37%19%37%22%49%76%71$5@$4@2$3@$2@$1@$0@2$1$5@$4@2|@|@|@|@|@|@2%41%6%41%10%39%13%37%16%37%19%37%22%49%76%67$5@$4@2$3@$2@$1@$0@2$0$5@$4@2|@|@|@|@|@|@4"])
  fun op nexp_size_def x = x
    val op nexp_size_def =
    ThmBind.DT(((("nexp",11),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%47%42%4%52%77%69$0@3%45%68%62%73@3$0@2|@2%47%41%6%41%10%52%77%61$1@$0@3%45%68%62%73@3%45%77$1@2%77$0@4|@|@2%47%41%6%41%10%52%77%71$1@$0@3%45%68%62%73@3%45%77$1@2%77$0@4|@|@2%41%6%41%10%52%77%67$1@$0@3%45%68%62%73@3%45%77$1@2%77$0@4|@|@4"])
  fun op nexpVal_def x = x
    val op nexpVal_def =
    ThmBind.DT(((("nexp",19),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%47%42%34%52%75%69$0@3$0@|@2%47%41%29%41%30%52%75%61$1@$0@3%45%75$1@2%75$0@3|@|@2%47%41%29%41%30%52%75%71$1@$0@3%46%75$1@2%75$0@3|@|@2%41%29%41%30%52%75%67$1@$0@3%44%75$1@2%75$0@3|@|@4"])
  fun op datatype_nexp x = x
    val op datatype_nexp =
    ThmBind.DT(((("nexp",12),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%65%32%69@%61@%71@%67@2"])
  fun op nexp_11 x = x
    val op nexp_11 =
    ThmBind.DT(((("nexp",13),
                [("bool",[14,25,26,30,50,52,55,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%47%42%4%42%5%50%51%69$1@2%69$0@3%52$1@$0@2|@|@2%47%41%6%41%10%41%8%41%12%50%51%61$3@$2@2%61$1@$0@3%47%51$3@$1@2%51$2@$0@3|@|@|@|@2%47%41%6%41%10%41%8%41%12%50%51%71$3@$2@2%71$1@$0@3%47%51$3@$1@2%51$2@$0@3|@|@|@|@2%41%6%41%10%41%8%41%12%50%51%67$3@$2@2%67$1@$0@3%47%51$3@$1@2%51$2@$0@3|@|@|@|@4"])
  fun op nexp_distinct x = x
    val op nexp_distinct =
    ThmBind.DT(((("nexp",14),
                [("bool",
                 [14,25,26,30,35,46,50,52,53,55,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%47%41%10%41%6%42%4%78%51%69$0@2%61$1@$2@3|@|@|@2%47%41%10%41%6%42%4%78%51%69$0@2%71$1@$2@3|@|@|@2%47%41%10%41%6%42%4%78%51%69$0@2%67$1@$2@3|@|@|@2%47%41%12%41%10%41%8%41%6%78%51%61$0@$2@2%71$1@$3@3|@|@|@|@2%47%41%12%41%10%41%8%41%6%78%51%61$0@$2@2%67$1@$3@3|@|@|@|@2%41%12%41%10%41%8%41%6%78%51%71$0@$2@2%67$1@$3@3|@|@|@|@6"])
  fun op nexp_case_cong x = x
    val op nexp_case_cong =
    ThmBind.DT(((("nexp",15),
                [("bool",[14,25,26,52,131,132,137,180]),
                 ("nexp",[1,2,3,4,5,6,7,8,9,10])]),["DISK_THM"]),
               [ThmBind.read"%41%1%41%2%39%13%37%16%37%19%37%22%54%47%51$5@$4@2%47%42%4%54%51$5@%69$0@3%49$4$0@2%14$0@3|@2%47%41%6%41%10%54%51$6@%61$1@$0@3%49$4$1@$0@2%18$1@$0@3|@|@2%47%41%6%41%10%54%51$6@%71$1@$0@3%49$3$1@$0@2%21$1@$0@3|@|@2%41%6%41%10%54%51$6@%67$1@$0@3%49$2$1@$0@2%24$1@$0@3|@|@6%49%76$5@$3@$2@$1@$0@2%76$4@%14@%18@%21@%24@3|@|@|@|@|@|@"])
  fun op nexp_nchotomy x = x
    val op nexp_nchotomy =
    ThmBind.DT(((("nexp",16),
                [("bool",[14,25,26,52,131,132,137,180]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%41%33%74%58%27%51$1@%69$0@2|@2%74%57%26%57%28%51$2@%61$1@$0@2|@|@2%74%57%26%57%28%51$2@%71$1@$0@2|@|@2%57%26%57%28%51$2@%67$1@$0@2|@|@4|@"])
  fun op nexp_Axiom x = x
    val op nexp_Axiom =
    ThmBind.DT(((("nexp",17),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%39%15%38%17%38%20%38%23%55%25%47%42%4%49$1%69$0@3$5$0@2|@2%47%41%6%41%10%49$2%61$1@$0@3$5$1@$0@$2$1@2$2$0@3|@|@2%47%41%6%41%10%49$2%71$1@$0@3$4$1@$0@$2$1@2$2$0@3|@|@2%41%6%41%10%49$2%67$1@$0@3$3$1@$0@$2$1@2$2$0@3|@|@4|@|@|@|@|@"])
  fun op nexp_induction x = x
    val op nexp_induction =
    ThmBind.DT(((("nexp",18),
                [("bool",[14,25,26,52,131,132,137]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%36%3%54%47%42%27$1%69$0@2|@2%47%41%26%41%28%54%47$2$1@2$2$0@3$2%61$1@$0@3|@|@2%47%41%26%41%28%54%47$2$1@2$2$0@3$2%71$1@$0@3|@|@2%41%26%41%28%54%47$2$1@2$2$0@3$2%67$1@$0@3|@|@5%41%26$1$0@|@2|@"])
  fun op Add_0 x = x
    val op Add_0 =
    ThmBind.DT(((("nexp",20),
                [("arithmetic",[0]),
                 ("bool",[14,25,26,35,52,55,131,132,137]),
                 ("nexp",[1,2,3,4,5,6,7,8,9,19])]),["DISK_THM"]),
               [ThmBind.read"%41%26%52%75%61%69%48@2$0@3%75$0@2|@"])
  fun op Add_SYM x = x
    val op Add_SYM =
    ThmBind.DT(((("nexp",21),
                [("arithmetic",[25]),
                 ("bool",
                 [13,25,26,27,29,46,47,50,51,52,53,55,62,70,92,93,95]),
                 ("nexp",[19]),
                 ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%41%29%41%30%52%75%61$1@$0@3%75%61$0@$1@3|@|@"])
  fun op Sub_0 x = x
    val op Sub_0 =
    ThmBind.DT(((("nexp",22),
                [("arithmetic",[63]),("bool",[25,35,50,55]),
                 ("nexp",[19])]),["DISK_THM"]),
               [ThmBind.read"%41%26%47%52%75%71%69%48@2$0@3%48@2%52%75%71$0@%69%48@4%75$0@3|@"])
  fun op Mult_ASSOC x = x
    val op Mult_ASSOC =
    ThmBind.DT(((("nexp",23),
                [("arithmetic",[78]),("bool",[25,35,55]),
                 ("nexp",[19])]),["DISK_THM"]),
               [ThmBind.read"%41%29%41%30%41%31%52%75%67$2@%67$1@$0@4%75%67%67$2@$1@2$0@3|@|@|@"])

  val _ = DB.bindl "nexp"
  [("nexp_TY_DEF",nexp_TY_DEF,DB.Def),
   ("nexp_case_def",nexp_case_def,DB.Def),
   ("nexp_size_def",nexp_size_def,DB.Def),
   ("nexpVal_def",nexpVal_def,DB.Def),
   ("datatype_nexp",datatype_nexp,DB.Thm), ("nexp_11",nexp_11,DB.Thm),
   ("nexp_distinct",nexp_distinct,DB.Thm),
   ("nexp_case_cong",nexp_case_cong,DB.Thm),
   ("nexp_nchotomy",nexp_nchotomy,DB.Thm),
   ("nexp_Axiom",nexp_Axiom,DB.Thm),
   ("nexp_induction",nexp_induction,DB.Thm), ("Add_0",Add_0,DB.Thm),
   ("Add_SYM",Add_SYM,DB.Thm), ("Sub_0",Sub_0,DB.Thm),
   ("Mult_ASSOC",Mult_ASSOC,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "nexp",
    thydataty = "compute",
    read = ThmBind.read,
    data = "nexp.nexpVal_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "nexp",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY4.nexp,4.nexp"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "nexp",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO3.Num3.%69OO3.Add3.%61OO3.Sub3.%71OO4.Mult3.%67OO9.nexp_CASE3.%76OO9.nexp_size3.%77OO4.case3.%76OO7.nexpVal3.%75"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val nexp_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="nexp"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val nexp_grammars = 
    Portable.## (addtyUDs,addtmUDs) nexp_grammars
  val _ = Parse.grammarDB_insert("nexp",nexp_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG nexp_Axiom,
           case_def=nexp_case_def,
           case_cong=nexp_case_cong,
           induction=ORIG nexp_induction,
           nchotomy=nexp_nchotomy,
           size=SOME(Parse.Term`(nexp$nexp_size) :nexp$nexp -> num$num`,
                     ORIG nexp_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME nexp_11,
           distinct=SOME nexp_distinct,
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
val _ = Theory.load_complete "nexp"
end
