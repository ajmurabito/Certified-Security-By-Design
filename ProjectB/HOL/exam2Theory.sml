structure exam2Theory :> exam2Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading exam2Theory ... " else ()
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
          ("exam2",
          Arbnum.fromString "1583055870",
          Arbnum.fromString "758974")
          [("aclDrules",
           Arbnum.fromString "1534466515",
           Arbnum.fromString "648647")];
  val _ = Theory.incorporate_types "exam2"
       [("roles2", 0), ("roles", 0), ("richAccts", 0), ("principals", 0),
        ("pinIdPrinc", 0), ("people2", 0), ("people", 0), ("passPrinc", 0),
        ("accounts", 0), ("RichesPrincipals", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("exam2", "roles"),
   ID("exam2", "roles2"), ID("exam2", "richAccts"),
   ID("exam2", "pinIdPrinc"), ID("exam2", "principals"),
   ID("exam2", "passPrinc"), ID("exam2", "people2"), ID("exam2", "people"),
   ID("exam2", "accounts"), ID("exam2", "RichesPrincipals"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("exam2", "AC"), ID("bool", "ARB"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("exam2", "BN"),
   ID("ind_type", "BOTTOM"), ID("exam2", "BankOfRiches"),
   ID("ind_type", "CONSTR"), ID("exam2", "Client"), ID("bool", "DATATYPE"),
   ID("exam2", "Don"), ID("exam2", "ID"), ID("exam2", "KennedyCenter"),
   ID("exam2", "Mary"), ID("arithmetic", "NUMERAL"),
   ID("aclfoundation", "Name"), ID("aclfoundation", "Princ"),
   ID("exam2", "PIN"), ID("exam2", "PR"), ID("exam2", "PR2"),
   ID("exam2", "Pass"), ID("exam2", "RAC"),
   ID("exam2", "RichesPrincipals_CASE"),
   ID("exam2", "RichesPrincipals_size"), ID("exam2", "Role"),
   ID("exam2", "Role2"), ID("num", "SUC"), ID("bool", "TYPE_DEFINITION"),
   ID("exam2", "Users"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("exam2", "accounts_CASE"), ID("exam2", "accounts_size"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "Form"),
   ID("aclfoundation", "meet"), ID("exam2", "num2people"),
   ID("exam2", "num2people2"), ID("exam2", "num2roles"),
   ID("exam2", "num2roles2"), ID("exam2", "passPrinc_CASE"),
   ID("exam2", "passPrinc_size"), ID("exam2", "people22num"),
   ID("exam2", "people2_CASE"), ID("exam2", "people2_size"),
   ID("exam2", "people2num"), ID("exam2", "people_CASE"),
   ID("exam2", "people_size"), ID("exam2", "pinIdPrinc_CASE"),
   ID("exam2", "pinIdPrinc_size"), ID("exam2", "principals_CASE"),
   ID("exam2", "principals_size"), ID("aclfoundation", "prop"),
   ID("exam2", "richAccts_CASE"), ID("exam2", "richAccts_size"),
   ID("exam2", "roles22num"), ID("exam2", "roles2_CASE"),
   ID("exam2", "roles2_size"), ID("exam2", "roles2num"),
   ID("exam2", "roles_CASE"), ID("exam2", "roles_size"),
   ID("aclrules", "sat"), ID("aclfoundation", "says"),
   ID("aclfoundation", "speaks_for"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 1, 4], TYOP [3], TYOP [0, 6, 0], TYOP [0, 6, 4], TYOP [4],
   TYOP [0, 9, 0], TYOP [5], TYOP [0, 11, 3], TYOP [0, 12, 3],
   TYOP [0, 9, 13], TYOP [6], TYOP [0, 15, 0], TYOP [0, 1, 3],
   TYOP [0, 17, 3], TYOP [7], TYOP [0, 19, 3], TYOP [0, 20, 18],
   TYOP [0, 20, 21], TYOP [0, 15, 22], TYOP [0, 11, 0], TYOP [8],
   TYOP [0, 25, 3], TYOP [0, 26, 3], TYOP [0, 11, 27], TYOP [9],
   TYOP [0, 29, 0], TYOP [0, 29, 4], TYOP [0, 25, 0], TYOP [0, 25, 4],
   TYOP [0, 19, 0], TYOP [0, 29, 3], TYOP [0, 35, 3], TYOP [0, 19, 36],
   TYOP [0, 0, 6], TYOP [0, 0, 1], TYOP [0, 0, 25], TYOP [0, 0, 29],
   TYOP [10], TYOP [0, 42, 0], TYOP [0, 42, 36], TYOP [0, 29, 19],
   TYOP [11], TYOP [0, 6, 46], TYOP [0, 1, 15], TYOP [0, 46, 0],
   TYOP [0, 0, 3], TYOP [0, 50, 3], TYOP [0, 6, 3], TYOP [0, 52, 51],
   TYOP [0, 12, 53], TYOP [0, 12, 54], TYOP [0, 12, 55], TYOP [0, 46, 56],
   TYOP [0, 11, 9], TYOP [0, 19, 15], TYOP [0, 11, 46], TYOP [0, 25, 11],
   TYOP [0, 0, 46], TYOP [0, 29, 42], TYOP [12], TYOP [14, 6, 0],
   TYOP [14, 11, 65], TYOP [13, 66], TYOP [0, 67, 64], TYOP [13, 29],
   TYOP [0, 69, 64], TYOP [13, 25], TYOP [0, 71, 64], TYOP [14, 19, 1],
   TYOP [13, 73], TYOP [0, 74, 64], TYOP [13, 11], TYOP [0, 76, 64],
   TYV "'e", TYV "'d", TYV "'b", TYOP [15, 42, 80, 15, 79, 78],
   TYOP [15, 9, 80, 46, 79, 78], TYOP [16, 79], TYOP [16, 78],
   TYOP [0, 46, 64], TYOP [0, 42, 64], TYOP [0, 19, 64], TYOP [0, 29, 64],
   TYOP [0, 25, 64], TYOP [0, 11, 64], TYOP [0, 15, 64], TYOP [0, 9, 64],
   TYOP [0, 1, 64], TYOP [0, 6, 64], TYOP [0, 62, 64], TYOP [0, 47, 95],
   TYOP [0, 60, 96], TYOP [0, 60, 97], TYOP [0, 60, 98], TYOP [0, 63, 64],
   TYOP [0, 46, 3], TYOP [0, 42, 3], TYOP [0, 15, 3], TYOP [0, 9, 3],
   TYOP [0, 45, 64], TYOP [0, 61, 64], TYOP [0, 48, 64], TYOP [0, 59, 107],
   TYOP [0, 59, 108], TYOP [0, 46, 67], TYOP [0, 42, 69], TYOP [0, 19, 69],
   TYOP [0, 11, 71], TYOP [0, 15, 74], TYOP [0, 9, 76], TYOP [0, 58, 64],
   TYOP [0, 3, 64], TYOP [0, 117, 64], TYOP [0, 85, 64], TYOP [0, 86, 64],
   TYOP [0, 119, 64], TYOP [0, 120, 64], TYOP [0, 50, 64],
   TYOP [0, 123, 64], TYOP [0, 20, 64], TYOP [0, 125, 64],
   TYOP [0, 87, 64], TYOP [0, 127, 64], TYOP [0, 35, 64],
   TYOP [0, 129, 64], TYOP [0, 88, 64], TYOP [0, 131, 64],
   TYOP [0, 26, 64], TYOP [0, 133, 64], TYOP [0, 89, 64],
   TYOP [0, 135, 64], TYOP [0, 12, 64], TYOP [0, 137, 64],
   TYOP [0, 90, 64], TYOP [0, 139, 64], TYOP [0, 91, 64],
   TYOP [0, 141, 64], TYOP [0, 70, 64], TYOP [0, 143, 64],
   TYOP [0, 72, 64], TYOP [0, 145, 64], TYOP [0, 77, 64],
   TYOP [0, 147, 64], TYOP [0, 75, 64], TYOP [0, 149, 64],
   TYOP [0, 68, 64], TYOP [0, 151, 64], TYOP [0, 92, 64],
   TYOP [0, 153, 64], TYOP [0, 17, 64], TYOP [0, 155, 64],
   TYOP [0, 93, 64], TYOP [0, 157, 64], TYOP [0, 52, 64],
   TYOP [0, 159, 64], TYOP [0, 94, 64], TYOP [0, 161, 64], TYOP [0, 0, 64],
   TYOP [0, 163, 64], TYOP [0, 0, 0], TYOP [0, 0, 165], TYOP [14, 83, 84],
   TYOP [14, 81, 167], TYOP [0, 167, 168], TYOP [0, 81, 169],
   TYOP [14, 82, 167], TYOP [0, 167, 171], TYOP [0, 82, 172],
   TYOP [0, 1, 73], TYOP [0, 19, 174], TYOP [0, 65, 66], TYOP [0, 11, 176],
   TYOP [0, 84, 167], TYOP [0, 83, 178], TYOP [0, 0, 65], TYOP [0, 6, 180],
   TYOP [0, 64, 64], TYOP [0, 64, 182], TYOP [0, 0, 163], TYOP [0, 3, 117],
   TYOP [0, 46, 85], TYOP [0, 42, 86], TYOP [0, 19, 87], TYOP [0, 29, 88],
   TYOP [0, 25, 89], TYOP [0, 11, 90], TYOP [0, 15, 91], TYOP [0, 69, 70],
   TYOP [0, 71, 72], TYOP [0, 76, 77], TYOP [0, 74, 75], TYOP [0, 67, 68],
   TYOP [0, 9, 92], TYOP [0, 1, 93], TYOP [0, 6, 94], TYOP [0, 101, 64],
   TYOP [0, 201, 64], TYOP [0, 110, 64], TYOP [0, 203, 64],
   TYOP [0, 102, 64], TYOP [0, 205, 64], TYOP [0, 111, 64],
   TYOP [0, 207, 64], TYOP [0, 112, 64], TYOP [0, 209, 64],
   TYOP [0, 30, 64], TYOP [0, 211, 64], TYOP [0, 32, 64],
   TYOP [0, 213, 64], TYOP [0, 113, 64], TYOP [0, 215, 64],
   TYOP [0, 103, 64], TYOP [0, 217, 64], TYOP [0, 114, 64],
   TYOP [0, 219, 64], TYOP [0, 104, 64], TYOP [0, 221, 64],
   TYOP [0, 115, 64], TYOP [0, 223, 64], TYOP [0, 2, 64],
   TYOP [0, 225, 64], TYOP [0, 7, 64], TYOP [0, 227, 64], TYOP [0, 0, 69],
   TYOP [0, 229, 69], TYOP [0, 29, 230], TYOP [0, 0, 231], TYOP [0, 0, 71],
   TYOP [0, 233, 71], TYOP [0, 25, 234], TYOP [0, 0, 235], TYOP [0, 0, 76],
   TYOP [0, 237, 76], TYOP [0, 11, 238], TYOP [0, 0, 239], TYOP [0, 0, 74],
   TYOP [0, 241, 74], TYOP [0, 73, 242], TYOP [0, 0, 243], TYOP [0, 0, 67],
   TYOP [0, 245, 67], TYOP [0, 66, 246], TYOP [0, 0, 247], TYOP [42, 46],
   TYOP [0, 46, 249], TYOP [42, 15], TYOP [0, 15, 251], TYOP [0, 163, 211],
   TYOP [0, 163, 213], TYOP [0, 163, 225], TYOP [0, 163, 227],
   TYOP [0, 70, 207], TYOP [0, 70, 209], TYOP [0, 72, 215],
   TYOP [0, 77, 223], TYOP [0, 75, 219], TYOP [0, 68, 203],
   TYOP [60, 9, 46, 79, 78], TYOP [0, 263, 263], TYOP [0, 249, 264],
   TYOP [60, 42, 15, 79, 78], TYOP [0, 266, 266], TYOP [0, 251, 267],
   TYOP [0, 249, 249], TYOP [0, 249, 269], TYOP [0, 42, 266],
   TYOP [0, 9, 263], TYOP [0, 266, 64], TYOP [0, 168, 273],
   TYOP [0, 263, 64], TYOP [0, 171, 275], TYOP [0, 249, 263],
   TYOP [0, 249, 277], TYOP [0, 251, 266], TYOP [0, 251, 279]]
  end
  val _ = Theory.incorporate_consts "exam2" tyvector
     [("roles_size", 2), ("roles_CASE", 5), ("roles2num", 2),
      ("roles2_size", 7), ("roles2_CASE", 8), ("roles22num", 7),
      ("richAccts_size", 10), ("richAccts_CASE", 14),
      ("principals_size", 16), ("principals_CASE", 23),
      ("pinIdPrinc_size", 24), ("pinIdPrinc_CASE", 28),
      ("people_size", 30), ("people_CASE", 31), ("people2num", 30),
      ("people2_size", 32), ("people2_CASE", 33), ("people22num", 32),
      ("passPrinc_size", 34), ("passPrinc_CASE", 37), ("num2roles2", 38),
      ("num2roles", 39), ("num2people2", 40), ("num2people", 41),
      ("accounts_size", 43), ("accounts_CASE", 44), ("Users", 45),
      ("Role2", 47), ("Role", 48), ("RichesPrincipals_size", 49),
      ("RichesPrincipals_CASE", 57), ("RAC", 58), ("Pass", 59),
      ("PR2", 60), ("PR", 59), ("PIN", 60), ("Mary", 29),
      ("KennedyCenter", 1), ("ID", 60), ("Don", 25), ("Client", 61),
      ("BankOfRiches", 6), ("BN", 62), ("AC", 63)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'RichesPrincipals'", 68), TMV("'accounts'", 70),
   TMV("'passPrinc'", 70), TMV("'pinIdPrinc'", 72),
   TMV("'principals'", 75), TMV("'richAccts'", 77), TMV("M", 81),
   TMV("M", 82), TMV("M", 46), TMV("M", 42), TMV("M", 19), TMV("M", 29),
   TMV("M", 25), TMV("M", 11), TMV("M", 15), TMV("M", 9), TMV("M", 1),
   TMV("M", 6), TMV("M'", 46), TMV("M'", 42), TMV("M'", 19), TMV("M'", 29),
   TMV("M'", 25), TMV("M'", 11), TMV("M'", 15), TMV("M'", 9), TMV("M'", 1),
   TMV("M'", 6), TMV("Oi", 83), TMV("Os", 84), TMV("P", 85), TMV("P", 86),
   TMV("P", 87), TMV("P", 88), TMV("P", 89), TMV("P", 90), TMV("P", 91),
   TMV("P", 92), TMV("P", 93), TMV("P", 94), TMV("R", 46), TMV("RR", 46),
   TMV("RichesPrincipals", 99), TMV("a", 42), TMV("a", 0), TMV("a", 19),
   TMV("a", 29), TMV("a", 25), TMV("a", 11), TMV("a", 1), TMV("a", 6),
   TMV("a'", 0), TMV("a'", 19), TMV("a'", 29), TMV("a'", 25),
   TMV("a'", 11), TMV("a'", 1), TMV("a'", 6), TMV("a0", 69), TMV("a0", 71),
   TMV("a0", 76), TMV("a0", 74), TMV("a0", 67), TMV("aa", 42),
   TMV("accounts", 100), TMV("f", 20), TMV("f", 35), TMV("f", 26),
   TMV("f", 12), TMV("f", 17), TMV("f", 52), TMV("f'", 20), TMV("f'", 35),
   TMV("f'", 26), TMV("f'", 12), TMV("f0", 20), TMV("f0", 12),
   TMV("f1", 20), TMV("f1", 12), TMV("f1'", 20), TMV("f1'", 12),
   TMV("f2", 12), TMV("f2", 17), TMV("f2'", 12), TMV("f2'", 17),
   TMV("f3", 52), TMV("f3'", 52), TMV("f4", 50), TMV("f4'", 50),
   TMV("fn", 101), TMV("fn", 102), TMV("fn", 20), TMV("fn", 12),
   TMV("fn", 103), TMV("fn", 104), TMV("m", 0), TMV("n", 0), TMV("p", 19),
   TMV("p", 29), TMV("p", 25), TMV("p", 11), TMV("p", 15),
   TMV("passPrinc", 105), TMV("people", 88), TMV("people2", 89),
   TMV("pinIdPrinc", 106), TMV("pp", 19), TMV("pp", 11), TMV("pp", 15),
   TMV("principals", 109), TMV("r", 0), TMV("r", 9), TMV("r", 1),
   TMV("r", 6), TMV("r'", 0), TMV("rep", 110), TMV("rep", 111),
   TMV("rep", 112), TMV("rep", 30), TMV("rep", 32), TMV("rep", 113),
   TMV("rep", 114), TMV("rep", 115), TMV("rep", 2), TMV("rep", 7),
   TMV("richAccts", 116), TMV("roles", 93), TMV("roles2", 94),
   TMV("rr", 9), TMV("v0", 3), TMV("v0'", 3), TMV("x", 29), TMV("x", 25),
   TMV("x", 1), TMV("x", 6), TMV("x0", 3), TMC(17, 118), TMC(17, 119),
   TMC(17, 120), TMC(17, 121), TMC(17, 122), TMC(17, 124), TMC(17, 126),
   TMC(17, 128), TMC(17, 130), TMC(17, 132), TMC(17, 134), TMC(17, 136),
   TMC(17, 138), TMC(17, 140), TMC(17, 142), TMC(17, 144), TMC(17, 146),
   TMC(17, 148), TMC(17, 150), TMC(17, 152), TMC(17, 154), TMC(17, 156),
   TMC(17, 158), TMC(17, 160), TMC(17, 162), TMC(17, 164), TMC(17, 127),
   TMC(17, 131), TMC(17, 135), TMC(17, 139), TMC(17, 141), TMC(17, 143),
   TMC(17, 145), TMC(17, 147), TMC(17, 149), TMC(17, 151), TMC(17, 153),
   TMC(17, 157), TMC(17, 161), TMC(18, 166), TMC(19, 170), TMC(19, 173),
   TMC(19, 175), TMC(19, 177), TMC(19, 179), TMC(19, 181), TMC(20, 183),
   TMC(21, 0), TMC(22, 184), TMC(23, 185), TMC(23, 186), TMC(23, 187),
   TMC(23, 183), TMC(23, 184), TMC(23, 188), TMC(23, 189), TMC(23, 190),
   TMC(23, 191), TMC(23, 192), TMC(23, 193), TMC(23, 194), TMC(23, 195),
   TMC(23, 196), TMC(23, 197), TMC(23, 198), TMC(23, 199), TMC(23, 200),
   TMC(24, 183), TMC(25, 202), TMC(25, 204), TMC(25, 206), TMC(25, 208),
   TMC(25, 126), TMC(25, 210), TMC(25, 130), TMC(25, 212), TMC(25, 134),
   TMC(25, 214), TMC(25, 138), TMC(25, 216), TMC(25, 218), TMC(25, 220),
   TMC(25, 222), TMC(25, 224), TMC(25, 156), TMC(25, 226), TMC(25, 160),
   TMC(25, 228), TMC(25, 164), TMC(25, 127), TMC(25, 131), TMC(25, 135),
   TMC(25, 139), TMC(25, 157), TMC(25, 161), TMC(26, 63), TMC(27, 0),
   TMC(27, 19), TMC(27, 11), TMC(27, 1), TMC(27, 6), TMC(28, 165),
   TMC(29, 165), TMC(30, 62), TMC(31, 69), TMC(31, 71), TMC(31, 76),
   TMC(31, 74), TMC(31, 67), TMC(32, 6), TMC(33, 232), TMC(33, 236),
   TMC(33, 240), TMC(33, 244), TMC(33, 248), TMC(34, 61), TMC(35, 182),
   TMC(36, 25), TMC(37, 60), TMC(38, 1), TMC(39, 29), TMC(40, 165),
   TMC(41, 250), TMC(41, 252), TMC(43, 60), TMC(44, 59), TMC(45, 60),
   TMC(46, 59), TMC(47, 58), TMC(48, 57), TMC(49, 49), TMC(50, 48),
   TMC(51, 47), TMC(52, 165), TMC(53, 253), TMC(53, 254), TMC(53, 255),
   TMC(53, 256), TMC(53, 257), TMC(53, 258), TMC(53, 259), TMC(53, 260),
   TMC(53, 261), TMC(53, 262), TMC(54, 45), TMC(55, 0), TMC(56, 183),
   TMC(57, 44), TMC(58, 43), TMC(59, 265), TMC(59, 268), TMC(61, 270),
   TMC(62, 41), TMC(63, 40), TMC(64, 39), TMC(65, 38), TMC(66, 37),
   TMC(67, 34), TMC(68, 32), TMC(69, 33), TMC(70, 32), TMC(71, 30),
   TMC(72, 31), TMC(73, 30), TMC(74, 28), TMC(75, 24), TMC(76, 23),
   TMC(77, 16), TMC(78, 271), TMC(78, 272), TMC(79, 14), TMC(80, 10),
   TMC(81, 7), TMC(82, 8), TMC(83, 7), TMC(84, 2), TMC(85, 5), TMC(86, 2),
   TMC(87, 274), TMC(87, 276), TMC(88, 265), TMC(88, 268), TMC(89, 278),
   TMC(89, 280), TMC(90, 182)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op roles_TY_DEF x = x
    val op roles_TY_DEF =
    ThmBind.DT(((("exam2",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%221%123%272%96%184$0@%257%237%281@3|@$0@|@"])
  fun op roles_BIJ x = x
    val op roles_BIJ =
    ThmBind.DT(((("exam2",1),[("bool",[116]),("exam2",[0])]),["DISK_THM"]),
               [ThmBind.read"%182%173%49%201%290%311$0@3$0@|@2%161%110%188%96%184$0@%257%237%281@3|$0@2%189%311%290$0@3$0@2|@2"])

  fun op roles_size_def x = x
    val op roles_size_def =
    ThmBind.DT(((("exam2",12),[]),[]),
               [ThmBind.read"%173%133%189%313$0@2%183@|@"])
  fun op roles_CASE x = x
    val op roles_CASE =
    ThmBind.DT(((("exam2",13),[]),[]),
               [ThmBind.read"%173%133%136%129%185%312$1@$0@2%95$1|%311$1@3|@|@"])
  fun op people_TY_DEF x = x
    val op people_TY_DEF =
    ThmBind.DT(((("exam2",20),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%211%118%270%96%184$0@%257%237%281@3|@$0@|@"])
  fun op people_BIJ x = x
    val op people_BIJ =
    ThmBind.DT(((("exam2",21),
                [("bool",[116]),("exam2",[20])]),["DISK_THM"]),
               [ThmBind.read"%182%163%46%191%288%297$0@3$0@|@2%161%110%188%96%184$0@%257%237%281@3|$0@2%189%297%288$0@3$0@2|@2"])

  fun op people_size_def x = x
    val op people_size_def =
    ThmBind.DT(((("exam2",32),[]),[]),
               [ThmBind.read"%163%131%189%299$0@2%183@|@"])
  fun op people_CASE x = x
    val op people_CASE =
    ThmBind.DT(((("exam2",33),[]),[]),
               [ThmBind.read"%163%131%136%129%185%298$1@$0@2%95$1|%297$1@3|@|@"])
  fun op passPrinc_TY_DEF x = x
    val op passPrinc_TY_DEF =
    ThmBind.DT(((("exam2",40),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%209%117%275%58%151%2%203%167%58%203%226%46%195$1@%46%246%183@$0@%96%240|@|$0@2|@2$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op passPrinc_case_def x = x
    val op passPrinc_case_def =
    ThmBind.DT(((("exam2",44),
                [("bool",[26,180]),("exam2",[41,42,43]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%163%46%144%66%185%292%280$1@2$0@2$0$1@2|@|@"])
  fun op passPrinc_size_def x = x
    val op passPrinc_size_def =
    ThmBind.DT(((("exam2",45),
                [("bool",[26,180]),("exam2",[41,42,43]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%163%46%189%293%280$0@3%175%257%237%281@3%299$0@3|@"])
  fun op principals_TY_DEF x = x
    val op principals_TY_DEF =
    ThmBind.DT(((("exam2",52),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%217%121%278%61%154%4%203%170%61%203%282%225%45%198$1@%45%249%183@%178$0@%235@2%96%243|@|$0@2|@2%282%225%45%198$1@%45%249%269%183@2%178$0@%235@2%96%243|@|$0@2|@2%229%49%198$1@%49%249%269%269%183@3%178%233@$0@2%96%243|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op principals_case_def x = x
    val op principals_case_def =
    ThmBind.DT(((("exam2",60),
                [("bool",[26,180]),("exam2",[53,54,55,56,57,58,59]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%162%45%142%65%142%77%157%82%185%302%261$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%182%162%45%142%65%142%77%157%82%185%302%263$3@2$2@$1@$0@2$1$3@2|@|@|@|@2%173%49%142%65%142%77%157%82%185%302%267$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op principals_size_def x = x
    val op principals_size_def =
    ThmBind.DT(((("exam2",61),
                [("bool",[26,180]),("exam2",[53,54,55,56,57,58,59]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%162%45%189%303%261$0@3%175%257%237%281@3%293$0@3|@2%182%162%45%189%303%263$0@3%175%257%237%281@3%293$0@3|@2%173%49%189%303%267$0@3%175%257%237%281@3%313$0@3|@3"])
  fun op accounts_TY_DEF x = x
    val op accounts_TY_DEF =
    ThmBind.DT(((("exam2",69),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%207%116%274%58%151%1%203%167%58%203%226%46%195$1@%46%246%183@$0@%96%240|@|$0@2|@2$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op accounts_case_def x = x
    val op accounts_case_def =
    ThmBind.DT(((("exam2",73),
                [("bool",[26,180]),("exam2",[70,71,72]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%163%46%144%66%185%283%231$1@2$0@2$0$1@2|@|@"])
  fun op accounts_size_def x = x
    val op accounts_size_def =
    ThmBind.DT(((("exam2",74),
                [("bool",[26,180]),("exam2",[70,71,72]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%163%46%189%284%231$0@3%175%257%237%281@3%299$0@3|@"])
  fun op people2_TY_DEF x = x
    val op people2_TY_DEF =
    ThmBind.DT(((("exam2",81),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%213%119%271%96%184$0@%257%237%281@3|@$0@|@"])
  fun op people2_BIJ x = x
    val op people2_BIJ =
    ThmBind.DT(((("exam2",82),
                [("bool",[116]),("exam2",[81])]),["DISK_THM"]),
               [ThmBind.read"%182%164%47%192%289%294$0@3$0@|@2%161%110%188%96%184$0@%257%237%281@3|$0@2%189%294%289$0@3$0@2|@2"])

  fun op people2_size_def x = x
    val op people2_size_def =
    ThmBind.DT(((("exam2",93),[]),[]),
               [ThmBind.read"%164%132%189%296$0@2%183@|@"])
  fun op people2_CASE x = x
    val op people2_CASE =
    ThmBind.DT(((("exam2",94),[]),[]),
               [ThmBind.read"%164%132%136%129%185%295$1@$0@2%95$1|%294$1@3|@|@"])
  fun op roles2_TY_DEF x = x
    val op roles2_TY_DEF =
    ThmBind.DT(((("exam2",101),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%223%124%273%96%184$0@%257%237%281@3|@$0@|@"])
  fun op roles2_BIJ x = x
    val op roles2_BIJ =
    ThmBind.DT(((("exam2",102),
                [("bool",[116]),("exam2",[101])]),["DISK_THM"]),
               [ThmBind.read"%182%174%50%202%291%308$0@3$0@|@2%161%110%188%96%184$0@%257%237%281@3|$0@2%189%308%291$0@3$0@2|@2"])

  fun op roles2_size_def x = x
    val op roles2_size_def =
    ThmBind.DT(((("exam2",113),[]),[]),
               [ThmBind.read"%174%134%189%310$0@2%183@|@"])
  fun op roles2_CASE x = x
    val op roles2_CASE =
    ThmBind.DT(((("exam2",114),[]),[]),
               [ThmBind.read"%174%134%136%129%185%309$1@$0@2%95$1|%308$1@3|@|@"])
  fun op pinIdPrinc_TY_DEF x = x
    val op pinIdPrinc_TY_DEF =
    ThmBind.DT(((("exam2",121),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%215%120%276%59%152%3%203%168%59%203%227%47%196$1@%47%247%183@$0@%96%241|@|$0@2|@2$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op pinIdPrinc_case_def x = x
    val op pinIdPrinc_case_def =
    ThmBind.DT(((("exam2",125),
                [("bool",[26,180]),("exam2",[122,123,124]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%164%47%146%67%185%300%251$1@2$0@2$0$1@2|@|@"])
  fun op pinIdPrinc_size_def x = x
    val op pinIdPrinc_size_def =
    ThmBind.DT(((("exam2",126),
                [("bool",[26,180]),("exam2",[122,123,124]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%164%47%189%301%251$0@3%175%257%237%281@3%296$0@3|@"])
  fun op RichesPrincipals_TY_DEF x = x
    val op RichesPrincipals_TY_DEF =
    ThmBind.DT(((("exam2",133),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%205%115%279%62%155%0%203%171%62%203%282%228%48%199$1@%48%250%183@%179$0@%181%236@%232@3%96%244|@|$0@2|@2%282%228%48%199$1@%48%250%269%183@2%179$0@%181%236@%232@3%96%244|@|$0@2|@2%282%228%48%199$1@%48%250%269%269%183@3%179$0@%181%236@%232@3%96%244|@|$0@2|@2%282%230%50%199$1@%50%250%269%269%269%183@4%179%234@%181$0@%232@3%96%244|@|$0@2|@2%224%44%199$1@%44%250%269%269%269%269%183@5%179%234@%181%236@$0@3%96%244|@|$0@2|@6$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op RichesPrincipals_case_def x = x
    val op RichesPrincipals_case_def =
    ThmBind.DT(((("exam2",145),
                [("bool",[26,180]),
                 ("exam2",[134,135,136,137,138,139,140,141,142,143,144]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%165%48%148%68%148%78%148%81%159%85%141%87%185%265%262$5@2$4@$3@$2@$1@$0@2$4$5@2|@|@|@|@|@|@2%182%165%48%148%68%148%78%148%81%159%85%141%87%185%265%260$5@2$4@$3@$2@$1@$0@2$3$5@2|@|@|@|@|@|@2%182%165%48%148%68%148%78%148%81%159%85%141%87%185%265%254$5@2$4@$3@$2@$1@$0@2$2$5@2|@|@|@|@|@|@2%182%174%50%148%68%148%78%148%81%159%85%141%87%185%265%268$5@2$4@$3@$2@$1@$0@2$1$5@2|@|@|@|@|@|@2%161%44%148%68%148%78%148%81%159%85%141%87%185%265%239$5@2$4@$3@$2@$1@$0@2$0$5@2|@|@|@|@|@|@5"])
  fun op RichesPrincipals_size_def x = x
    val op RichesPrincipals_size_def =
    ThmBind.DT(((("exam2",146),
                [("bool",[26,180]),
                 ("exam2",[134,135,136,137,138,139,140,141,142,143,144]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%165%48%189%266%262$0@3%175%257%237%281@3%301$0@3|@2%182%165%48%189%266%260$0@3%175%257%237%281@3%301$0@3|@2%182%165%48%189%266%254$0@3%175%257%237%281@3%301$0@3|@2%182%174%50%189%266%268$0@3%175%257%237%281@3%310$0@3|@2%161%44%189%266%239$0@3%175%257%237%281@3$0@2|@5"])
  fun op richAccts_TY_DEF x = x
    val op richAccts_TY_DEF =
    ThmBind.DT(((("exam2",154),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%219%122%277%60%153%5%203%169%60%203%228%48%197$1@%48%248%183@$0@%96%242|@|$0@2|@2$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op richAccts_case_def x = x
    val op richAccts_case_def =
    ThmBind.DT(((("exam2",158),
                [("bool",[26,180]),("exam2",[155,156,157]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%165%48%148%68%185%306%264$1@2$0@2$0$1@2|@|@"])
  fun op richAccts_size_def x = x
    val op richAccts_size_def =
    ThmBind.DT(((("exam2",159),
                [("bool",[26,180]),("exam2",[155,156,157]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%165%48%189%307%264$0@3%175%257%237%281@3%301$0@3|@"])
  fun op num2roles_roles2num x = x
    val op num2roles_roles2num =
    ThmBind.DT(((("exam2",2),[("exam2",[1])]),["DISK_THM"]),
               [ThmBind.read"%173%49%201%290%311$0@3$0@|@"])
  fun op roles2num_num2roles x = x
    val op roles2num_num2roles =
    ThmBind.DT(((("exam2",3),[("exam2",[1])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%189%311%290$0@3$0@2|@"])
  fun op num2roles_11 x = x
    val op num2roles_11 =
    ThmBind.DT(((("exam2",4),[("bool",[26]),("exam2",[1])]),["DISK_THM"]),
               [ThmBind.read"%161%110%161%114%203%184$1@%257%237%281@4%203%184$0@%257%237%281@4%188%201%290$1@2%290$0@3%189$1@$0@4|@|@"])
  fun op roles2num_11 x = x
    val op roles2num_11 =
    ThmBind.DT(((("exam2",5),[("bool",[26]),("exam2",[1])]),["DISK_THM"]),
               [ThmBind.read"%173%49%173%56%188%189%311$1@2%311$0@3%201$1@$0@2|@|@"])
  fun op num2roles_ONTO x = x
    val op num2roles_ONTO =
    ThmBind.DT(((("exam2",6),
                [("bool",[25,62]),("exam2",[1])]),["DISK_THM"]),
               [ThmBind.read"%173%49%224%110%182%201$1@%290$0@3%184$0@%257%237%281@4|@|@"])
  fun op roles2num_ONTO x = x
    val op roles2num_ONTO =
    ThmBind.DT(((("exam2",7),[("bool",[26]),("exam2",[1])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%229%49%189$1@%311$0@2|@2|@"])
  fun op num2roles_thm x = x
    val op num2roles_thm =
    ThmBind.DT(((("exam2",9),[("exam2",[8])]),[]),
               [ThmBind.read"%201%290%183@2%255@"])
  fun op roles2num_thm x = x
    val op roles2num_thm =
    ThmBind.DT(((("exam2",10),
                [("bool",[25]),("exam2",[3,8]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%189%311%255@2%183@"])
  fun op roles_EQ_roles x = x
    val op roles_EQ_roles =
    ThmBind.DT(((("exam2",11),[("bool",[57]),("exam2",[5])]),["DISK_THM"]),
               [ThmBind.read"%173%49%173%56%188%201$1@$0@2%189%311$1@2%311$0@3|@|@"])
  fun op roles_case_def x = x
    val op roles_case_def =
    ThmBind.DT(((("exam2",14),[("exam2",[10,13])]),["DISK_THM"]),
               [ThmBind.read"%136%129%185%312%255@$0@2$0@|@"])
  fun op datatype_roles x = x
    val op datatype_roles =
    ThmBind.DT(((("exam2",15),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%126%255@2"])
  fun op roles_case_cong x = x
    val op roles_case_cong =
    ThmBind.DT(((("exam2",16),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[6,8,14]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%173%16%173%26%136%129%203%182%201$2@$1@2%203%201$1@%255@2%185$0@%130@4%185%312$2@$0@2%312$1@%130@3|@|@|@"])
  fun op roles_nchotomy x = x
    val op roles_nchotomy =
    ThmBind.DT(((("exam2",17),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[6,8]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%173%49%201$0@%255@|@"])
  fun op roles_Axiom x = x
    val op roles_Axiom =
    ThmBind.DT(((("exam2",18),
                [("bool",[8,25,55]),("exam2",[10])]),["DISK_THM"]),
               [ThmBind.read"%136%135%220%69%185$0%255@2$1@|@|@"])
  fun op roles_induction x = x
    val op roles_induction =
    ThmBind.DT(((("exam2",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[6,8]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%158%38%203$0%255@2%173%49$1$0@|@2|@"])
  fun op num2people_people2num x = x
    val op num2people_people2num =
    ThmBind.DT(((("exam2",22),[("exam2",[21])]),["DISK_THM"]),
               [ThmBind.read"%163%46%191%288%297$0@3$0@|@"])
  fun op people2num_num2people x = x
    val op people2num_num2people =
    ThmBind.DT(((("exam2",23),[("exam2",[21])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%189%297%288$0@3$0@2|@"])
  fun op num2people_11 x = x
    val op num2people_11 =
    ThmBind.DT(((("exam2",24),
                [("bool",[26]),("exam2",[21])]),["DISK_THM"]),
               [ThmBind.read"%161%110%161%114%203%184$1@%257%237%281@4%203%184$0@%257%237%281@4%188%191%288$1@2%288$0@3%189$1@$0@4|@|@"])
  fun op people2num_11 x = x
    val op people2num_11 =
    ThmBind.DT(((("exam2",25),
                [("bool",[26]),("exam2",[21])]),["DISK_THM"]),
               [ThmBind.read"%163%46%163%53%188%189%297$1@2%297$0@3%191$1@$0@2|@|@"])
  fun op num2people_ONTO x = x
    val op num2people_ONTO =
    ThmBind.DT(((("exam2",26),
                [("bool",[25,62]),("exam2",[21])]),["DISK_THM"]),
               [ThmBind.read"%163%46%224%110%182%191$1@%288$0@3%184$0@%257%237%281@4|@|@"])
  fun op people2num_ONTO x = x
    val op people2num_ONTO =
    ThmBind.DT(((("exam2",27),
                [("bool",[26]),("exam2",[21])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%226%46%189$1@%297$0@2|@2|@"])
  fun op num2people_thm x = x
    val op num2people_thm =
    ThmBind.DT(((("exam2",29),[("exam2",[28])]),[]),
               [ThmBind.read"%191%288%183@2%256@"])
  fun op people2num_thm x = x
    val op people2num_thm =
    ThmBind.DT(((("exam2",30),
                [("bool",[25]),("exam2",[23,28]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%189%297%256@2%183@"])
  fun op people_EQ_people x = x
    val op people_EQ_people =
    ThmBind.DT(((("exam2",31),
                [("bool",[57]),("exam2",[25])]),["DISK_THM"]),
               [ThmBind.read"%163%46%163%53%188%191$1@$0@2%189%297$1@2%297$0@3|@|@"])
  fun op people_case_def x = x
    val op people_case_def =
    ThmBind.DT(((("exam2",34),[("exam2",[30,33])]),["DISK_THM"]),
               [ThmBind.read"%136%129%185%298%256@$0@2$0@|@"])
  fun op datatype_people x = x
    val op datatype_people =
    ThmBind.DT(((("exam2",35),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%103%256@2"])
  fun op people_case_cong x = x
    val op people_case_cong =
    ThmBind.DT(((("exam2",36),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[26,28,34]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%163%11%163%21%136%129%203%182%191$2@$1@2%203%191$1@%256@2%185$0@%130@4%185%298$2@$0@2%298$1@%130@3|@|@|@"])
  fun op people_nchotomy x = x
    val op people_nchotomy =
    ThmBind.DT(((("exam2",37),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[26,28]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%163%46%191$0@%256@|@"])
  fun op people_Axiom x = x
    val op people_Axiom =
    ThmBind.DT(((("exam2",38),
                [("bool",[8,25,55]),("exam2",[30])]),["DISK_THM"]),
               [ThmBind.read"%136%135%210%66%185$0%256@2$1@|@|@"])
  fun op people_induction x = x
    val op people_induction =
    ThmBind.DT(((("exam2",39),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[26,28]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%145%33%203$0%256@2%163%46$1$0@|@2|@"])
  fun op datatype_passPrinc x = x
    val op datatype_passPrinc =
    ThmBind.DT(((("exam2",46),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%102%280@2"])
  fun op passPrinc_11 x = x
    val op passPrinc_11 =
    ThmBind.DT(((("exam2",47),
                [("bool",[26,55,62,180]),("exam2",[41,42,43]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%163%46%163%53%188%190%280$1@2%280$0@3%191$1@$0@2|@|@"])
  fun op passPrinc_case_cong x = x
    val op passPrinc_case_cong =
    ThmBind.DT(((("exam2",48),
                [("bool",[26,180]),("exam2",[41,42,43,44])]),["DISK_THM"]),
               [ThmBind.read"%162%10%162%20%144%66%203%182%190$2@$1@2%163%46%203%190$2@%280$0@3%185$1$0@2%72$0@3|@3%185%292$2@$0@2%292$1@%72@3|@|@|@"])
  fun op passPrinc_nchotomy x = x
    val op passPrinc_nchotomy =
    ThmBind.DT(((("exam2",49),
                [("bool",[26,180]),("exam2",[41,42,43])]),["DISK_THM"]),
               [ThmBind.read"%162%106%226%98%190$1@%280$0@2|@|@"])
  fun op passPrinc_Axiom x = x
    val op passPrinc_Axiom =
    ThmBind.DT(((("exam2",50),
                [("bool",[26,180]),("exam2",[41,42,43]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%144%66%208%91%163%46%185$1%280$0@3$2$0@2|@|@|@"])
  fun op passPrinc_induction x = x
    val op passPrinc_induction =
    ThmBind.DT(((("exam2",51),
                [("bool",[26]),("exam2",[41,42,43])]),["DISK_THM"]),
               [ThmBind.read"%143%32%203%163%98$1%280$0@2|@2%162%97$1$0@|@2|@"])
  fun op datatype_principals x = x
    val op datatype_principals =
    ThmBind.DT(((("exam2",62),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%109%261@%263@%267@2"])
  fun op principals_11 x = x
    val op principals_11 =
    ThmBind.DT(((("exam2",63),
                [("bool",[26,55,62,180]),("exam2",[53,54,55,56,57,58,59]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%162%45%162%52%188%194%261$1@2%261$0@3%190$1@$0@2|@|@2%182%162%45%162%52%188%194%263$1@2%263$0@3%190$1@$0@2|@|@2%173%49%173%56%188%194%267$1@2%267$0@3%201$1@$0@2|@|@3"])
  fun op principals_distinct x = x
    val op principals_distinct =
    ThmBind.DT(((("exam2",64),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("exam2",[53,54,55,56,57,58,59]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%162%52%162%45%320%194%261$0@2%263$1@3|@|@2%182%173%56%162%45%320%194%261$0@2%267$1@3|@|@2%173%56%162%45%320%194%263$0@2%267$1@3|@|@3"])
  fun op principals_case_cong x = x
    val op principals_case_cong =
    ThmBind.DT(((("exam2",65),
                [("bool",[26,180]),
                 ("exam2",[53,54,55,56,57,58,59,60])]),["DISK_THM"]),
               [ThmBind.read"%166%14%166%24%142%65%142%77%157%82%203%182%194$4@$3@2%182%162%45%203%194$4@%261$0@3%185$3$0@2%71$0@3|@2%182%162%45%203%194$4@%263$0@3%185$2$0@2%79$0@3|@2%173%49%203%194$4@%267$0@3%185$1$0@2%84$0@3|@5%185%302$4@$2@$1@$0@2%302$3@%71@%79@%84@3|@|@|@|@|@"])
  fun op principals_nchotomy x = x
    val op principals_nchotomy =
    ThmBind.DT(((("exam2",66),
                [("bool",[26,180]),
                 ("exam2",[53,54,55,56,57,58,59])]),["DISK_THM"]),
               [ThmBind.read"%166%108%282%225%97%194$1@%261$0@2|@2%282%225%97%194$1@%263$0@2|@2%229%112%194$1@%267$0@2|@3|@"])
  fun op principals_Axiom x = x
    val op principals_Axiom =
    ThmBind.DT(((("exam2",67),
                [("bool",[26,180]),("exam2",[53,54,55,56,57,58,59]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%142%75%142%77%157%82%216%93%182%162%45%185$1%261$0@3$4$0@2|@2%182%162%45%185$1%263$0@3$3$0@2|@2%173%49%185$1%267$0@3$2$0@2|@3|@|@|@|@"])
  fun op principals_induction x = x
    val op principals_induction =
    ThmBind.DT(((("exam2",68),
                [("bool",[26]),
                 ("exam2",[53,54,55,56,57,58,59])]),["DISK_THM"]),
               [ThmBind.read"%150%36%203%182%162%97$1%261$0@2|@2%182%162%97$1%263$0@2|@2%173%112$1%267$0@2|@4%166%101$1$0@|@2|@"])
  fun op datatype_accounts x = x
    val op datatype_accounts =
    ThmBind.DT(((("exam2",75),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%64%231@2"])
  fun op accounts_11 x = x
    val op accounts_11 =
    ThmBind.DT(((("exam2",76),
                [("bool",[26,55,62,180]),("exam2",[70,71,72]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%163%46%163%53%188%187%231$1@2%231$0@3%191$1@$0@2|@|@"])
  fun op accounts_case_cong x = x
    val op accounts_case_cong =
    ThmBind.DT(((("exam2",77),
                [("bool",[26,180]),("exam2",[70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%138%9%138%19%144%66%203%182%187$2@$1@2%163%46%203%187$2@%231$0@3%185$1$0@2%72$0@3|@3%185%283$2@$0@2%283$1@%72@3|@|@|@"])
  fun op accounts_nchotomy x = x
    val op accounts_nchotomy =
    ThmBind.DT(((("exam2",78),
                [("bool",[26,180]),("exam2",[70,71,72])]),["DISK_THM"]),
               [ThmBind.read"%138%63%226%98%187$1@%231$0@2|@|@"])
  fun op accounts_Axiom x = x
    val op accounts_Axiom =
    ThmBind.DT(((("exam2",79),
                [("bool",[26,180]),("exam2",[70,71,72]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%144%66%206%90%163%46%185$1%231$0@3$2$0@2|@|@|@"])
  fun op accounts_induction x = x
    val op accounts_induction =
    ThmBind.DT(((("exam2",80),
                [("bool",[26]),("exam2",[70,71,72])]),["DISK_THM"]),
               [ThmBind.read"%140%31%203%163%98$1%231$0@2|@2%138%43$1$0@|@2|@"])
  fun op num2people2_people22num x = x
    val op num2people2_people22num =
    ThmBind.DT(((("exam2",83),[("exam2",[82])]),["DISK_THM"]),
               [ThmBind.read"%164%47%192%289%294$0@3$0@|@"])
  fun op people22num_num2people2 x = x
    val op people22num_num2people2 =
    ThmBind.DT(((("exam2",84),[("exam2",[82])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%189%294%289$0@3$0@2|@"])
  fun op num2people2_11 x = x
    val op num2people2_11 =
    ThmBind.DT(((("exam2",85),
                [("bool",[26]),("exam2",[82])]),["DISK_THM"]),
               [ThmBind.read"%161%110%161%114%203%184$1@%257%237%281@4%203%184$0@%257%237%281@4%188%192%289$1@2%289$0@3%189$1@$0@4|@|@"])
  fun op people22num_11 x = x
    val op people22num_11 =
    ThmBind.DT(((("exam2",86),
                [("bool",[26]),("exam2",[82])]),["DISK_THM"]),
               [ThmBind.read"%164%47%164%54%188%189%294$1@2%294$0@3%192$1@$0@2|@|@"])
  fun op num2people2_ONTO x = x
    val op num2people2_ONTO =
    ThmBind.DT(((("exam2",87),
                [("bool",[25,62]),("exam2",[82])]),["DISK_THM"]),
               [ThmBind.read"%164%47%224%110%182%192$1@%289$0@3%184$0@%257%237%281@4|@|@"])
  fun op people22num_ONTO x = x
    val op people22num_ONTO =
    ThmBind.DT(((("exam2",88),
                [("bool",[26]),("exam2",[82])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%227%47%189$1@%294$0@2|@2|@"])
  fun op num2people2_thm x = x
    val op num2people2_thm =
    ThmBind.DT(((("exam2",90),[("exam2",[89])]),[]),
               [ThmBind.read"%192%289%183@2%253@"])
  fun op people22num_thm x = x
    val op people22num_thm =
    ThmBind.DT(((("exam2",91),
                [("bool",[25]),("exam2",[84,89]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%189%294%253@2%183@"])
  fun op people2_EQ_people2 x = x
    val op people2_EQ_people2 =
    ThmBind.DT(((("exam2",92),
                [("bool",[57]),("exam2",[86])]),["DISK_THM"]),
               [ThmBind.read"%164%47%164%54%188%192$1@$0@2%189%294$1@2%294$0@3|@|@"])
  fun op people2_case_def x = x
    val op people2_case_def =
    ThmBind.DT(((("exam2",95),[("exam2",[91,94])]),["DISK_THM"]),
               [ThmBind.read"%136%129%185%295%253@$0@2$0@|@"])
  fun op datatype_people2 x = x
    val op datatype_people2 =
    ThmBind.DT(((("exam2",96),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%104%253@2"])
  fun op people2_case_cong x = x
    val op people2_case_cong =
    ThmBind.DT(((("exam2",97),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[87,89,95]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%164%12%164%22%136%129%203%182%192$2@$1@2%203%192$1@%253@2%185$0@%130@4%185%295$2@$0@2%295$1@%130@3|@|@|@"])
  fun op people2_nchotomy x = x
    val op people2_nchotomy =
    ThmBind.DT(((("exam2",98),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[87,89]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%164%47%192$0@%253@|@"])
  fun op people2_Axiom x = x
    val op people2_Axiom =
    ThmBind.DT(((("exam2",99),
                [("bool",[8,25,55]),("exam2",[91])]),["DISK_THM"]),
               [ThmBind.read"%136%135%212%67%185$0%253@2$1@|@|@"])
  fun op people2_induction x = x
    val op people2_induction =
    ThmBind.DT(((("exam2",100),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[87,89]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%147%34%203$0%253@2%164%47$1$0@|@2|@"])
  fun op num2roles2_roles22num x = x
    val op num2roles2_roles22num =
    ThmBind.DT(((("exam2",103),[("exam2",[102])]),["DISK_THM"]),
               [ThmBind.read"%174%50%202%291%308$0@3$0@|@"])
  fun op roles22num_num2roles2 x = x
    val op roles22num_num2roles2 =
    ThmBind.DT(((("exam2",104),[("exam2",[102])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%189%308%291$0@3$0@2|@"])
  fun op num2roles2_11 x = x
    val op num2roles2_11 =
    ThmBind.DT(((("exam2",105),
                [("bool",[26]),("exam2",[102])]),["DISK_THM"]),
               [ThmBind.read"%161%110%161%114%203%184$1@%257%237%281@4%203%184$0@%257%237%281@4%188%202%291$1@2%291$0@3%189$1@$0@4|@|@"])
  fun op roles22num_11 x = x
    val op roles22num_11 =
    ThmBind.DT(((("exam2",106),
                [("bool",[26]),("exam2",[102])]),["DISK_THM"]),
               [ThmBind.read"%174%50%174%57%188%189%308$1@2%308$0@3%202$1@$0@2|@|@"])
  fun op num2roles2_ONTO x = x
    val op num2roles2_ONTO =
    ThmBind.DT(((("exam2",107),
                [("bool",[25,62]),("exam2",[102])]),["DISK_THM"]),
               [ThmBind.read"%174%50%224%110%182%202$1@%291$0@3%184$0@%257%237%281@4|@|@"])
  fun op roles22num_ONTO x = x
    val op roles22num_ONTO =
    ThmBind.DT(((("exam2",108),
                [("bool",[26]),("exam2",[102])]),["DISK_THM"]),
               [ThmBind.read"%161%110%188%184$0@%257%237%281@4%230%50%189$1@%308$0@2|@2|@"])
  fun op num2roles2_thm x = x
    val op num2roles2_thm =
    ThmBind.DT(((("exam2",110),[("exam2",[109])]),[]),
               [ThmBind.read"%202%291%183@2%245@"])
  fun op roles22num_thm x = x
    val op roles22num_thm =
    ThmBind.DT(((("exam2",111),
                [("bool",[25]),("exam2",[104,109]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%189%308%245@2%183@"])
  fun op roles2_EQ_roles2 x = x
    val op roles2_EQ_roles2 =
    ThmBind.DT(((("exam2",112),
                [("bool",[57]),("exam2",[106])]),["DISK_THM"]),
               [ThmBind.read"%174%50%174%57%188%202$1@$0@2%189%308$1@2%308$0@3|@|@"])
  fun op roles2_case_def x = x
    val op roles2_case_def =
    ThmBind.DT(((("exam2",115),[("exam2",[111,114])]),["DISK_THM"]),
               [ThmBind.read"%136%129%185%309%245@$0@2$0@|@"])
  fun op datatype_roles2 x = x
    val op datatype_roles2 =
    ThmBind.DT(((("exam2",116),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%127%245@2"])
  fun op roles2_case_cong x = x
    val op roles2_case_cong =
    ThmBind.DT(((("exam2",117),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[107,109,115]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%174%17%174%27%136%129%203%182%202$2@$1@2%203%202$1@%245@2%185$0@%130@4%185%309$2@$0@2%309$1@%130@3|@|@|@"])
  fun op roles2_nchotomy x = x
    val op roles2_nchotomy =
    ThmBind.DT(((("exam2",118),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[107,109]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%174%50%202$0@%245@|@"])
  fun op roles2_Axiom x = x
    val op roles2_Axiom =
    ThmBind.DT(((("exam2",119),
                [("bool",[8,25,55]),("exam2",[111])]),["DISK_THM"]),
               [ThmBind.read"%136%135%222%70%185$0%245@2$1@|@|@"])
  fun op roles2_induction x = x
    val op roles2_induction =
    ThmBind.DT(((("exam2",120),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("exam2",[107,109]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%160%39%203$0%245@2%174%50$1$0@|@2|@"])
  fun op datatype_pinIdPrinc x = x
    val op datatype_pinIdPrinc =
    ThmBind.DT(((("exam2",127),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%105%251@2"])
  fun op pinIdPrinc_11 x = x
    val op pinIdPrinc_11 =
    ThmBind.DT(((("exam2",128),
                [("bool",[26,55,62,180]),("exam2",[122,123,124]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%164%47%164%54%188%193%251$1@2%251$0@3%192$1@$0@2|@|@"])
  fun op pinIdPrinc_case_cong x = x
    val op pinIdPrinc_case_cong =
    ThmBind.DT(((("exam2",129),
                [("bool",[26,180]),
                 ("exam2",[122,123,124,125])]),["DISK_THM"]),
               [ThmBind.read"%165%13%165%23%146%67%203%182%193$2@$1@2%164%47%203%193$2@%251$0@3%185$1$0@2%73$0@3|@3%185%300$2@$0@2%300$1@%73@3|@|@|@"])
  fun op pinIdPrinc_nchotomy x = x
    val op pinIdPrinc_nchotomy =
    ThmBind.DT(((("exam2",130),
                [("bool",[26,180]),("exam2",[122,123,124])]),["DISK_THM"]),
               [ThmBind.read"%165%107%227%99%193$1@%251$0@2|@|@"])
  fun op pinIdPrinc_Axiom x = x
    val op pinIdPrinc_Axiom =
    ThmBind.DT(((("exam2",131),
                [("bool",[26,180]),("exam2",[122,123,124]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%146%67%214%92%164%47%185$1%251$0@3$2$0@2|@|@|@"])
  fun op pinIdPrinc_induction x = x
    val op pinIdPrinc_induction =
    ThmBind.DT(((("exam2",132),
                [("bool",[26]),("exam2",[122,123,124])]),["DISK_THM"]),
               [ThmBind.read"%149%35%203%164%99$1%251$0@2|@2%165%100$1$0@|@2|@"])
  fun op datatype_RichesPrincipals x = x
    val op datatype_RichesPrincipals =
    ThmBind.DT(((("exam2",147),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%42%262@%260@%254@%268@%239@2"])
  fun op RichesPrincipals_11 x = x
    val op RichesPrincipals_11 =
    ThmBind.DT(((("exam2",148),
                [("bool",[26,55,62,180]),
                 ("exam2",[134,135,136,137,138,139,140,141,142,143,144]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%165%48%165%55%188%186%262$1@2%262$0@3%193$1@$0@2|@|@2%182%165%48%165%55%188%186%260$1@2%260$0@3%193$1@$0@2|@|@2%182%165%48%165%55%188%186%254$1@2%254$0@3%193$1@$0@2|@|@2%182%174%50%174%57%188%186%268$1@2%268$0@3%202$1@$0@2|@|@2%161%44%161%51%188%186%239$1@2%239$0@3%189$1@$0@2|@|@5"])
  fun op RichesPrincipals_distinct x = x
    val op RichesPrincipals_distinct =
    ThmBind.DT(((("exam2",149),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("exam2",[134,135,136,137,138,139,140,141,142,143,144]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%182%165%55%165%48%320%186%262$0@2%260$1@3|@|@2%182%165%55%165%48%320%186%262$0@2%254$1@3|@|@2%182%174%57%165%48%320%186%262$0@2%268$1@3|@|@2%182%161%51%165%48%320%186%262$0@2%239$1@3|@|@2%182%165%55%165%48%320%186%260$0@2%254$1@3|@|@2%182%174%57%165%48%320%186%260$0@2%268$1@3|@|@2%182%161%51%165%48%320%186%260$0@2%239$1@3|@|@2%182%174%57%165%48%320%186%254$0@2%268$1@3|@|@2%182%161%51%165%48%320%186%254$0@2%239$1@3|@|@2%161%51%174%50%320%186%268$0@2%239$1@3|@|@10"])
  fun op RichesPrincipals_case_cong x = x
    val op RichesPrincipals_case_cong =
    ThmBind.DT(((("exam2",150),
                [("bool",[26,180]),
                 ("exam2",
                 [134,135,136,137,138,139,140,141,142,143,144,
                  145])]),["DISK_THM"]),
               [ThmBind.read"%137%8%137%18%148%68%148%78%148%81%159%85%141%87%203%182%186$6@$5@2%182%165%48%203%186$6@%262$0@3%185$5$0@2%74$0@3|@2%182%165%48%203%186$6@%260$0@3%185$4$0@2%80$0@3|@2%182%165%48%203%186$6@%254$0@3%185$3$0@2%83$0@3|@2%182%174%50%203%186$6@%268$0@3%185$2$0@2%86$0@3|@2%161%44%203%186$6@%239$0@3%185$1$0@2%88$0@3|@7%185%265$6@$4@$3@$2@$1@$0@2%265$5@%74@%80@%83@%86@%88@3|@|@|@|@|@|@|@"])
  fun op RichesPrincipals_nchotomy x = x
    val op RichesPrincipals_nchotomy =
    ThmBind.DT(((("exam2",151),
                [("bool",[26,180]),
                 ("exam2",
                 [134,135,136,137,138,139,140,141,142,143,
                  144])]),["DISK_THM"]),
               [ThmBind.read"%137%41%282%228%100%186$1@%262$0@2|@2%282%228%100%186$1@%260$0@2|@2%282%228%100%186$1@%254$0@2|@2%282%230%113%186$1@%268$0@2|@2%224%96%186$1@%239$0@2|@5|@"])
  fun op RichesPrincipals_Axiom x = x
    val op RichesPrincipals_Axiom =
    ThmBind.DT(((("exam2",152),
                [("bool",[26,180]),
                 ("exam2",[134,135,136,137,138,139,140,141,142,143,144]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%148%76%148%78%148%81%159%85%141%87%204%89%182%165%48%185$1%262$0@3$6$0@2|@2%182%165%48%185$1%260$0@3$5$0@2|@2%182%165%48%185$1%254$0@3$4$0@2|@2%182%174%50%185$1%268$0@3$3$0@2|@2%161%44%185$1%239$0@3$2$0@2|@5|@|@|@|@|@|@"])
  fun op RichesPrincipals_induction x = x
    val op RichesPrincipals_induction =
    ThmBind.DT(((("exam2",153),
                [("bool",[26]),
                 ("exam2",
                 [134,135,136,137,138,139,140,141,142,143,
                  144])]),["DISK_THM"]),
               [ThmBind.read"%139%30%203%182%165%100$1%262$0@2|@2%182%165%100$1%260$0@2|@2%182%165%100$1%254$0@2|@2%182%174%113$1%268$0@2|@2%161%96$1%239$0@2|@6%137%40$1$0@|@2|@"])
  fun op datatype_richAccts x = x
    val op datatype_richAccts =
    ThmBind.DT(((("exam2",160),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%252%125%264@2"])
  fun op richAccts_11 x = x
    val op richAccts_11 =
    ThmBind.DT(((("exam2",161),
                [("bool",[26,55,62,180]),("exam2",[155,156,157]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%165%48%165%55%188%200%264$1@2%264$0@3%193$1@$0@2|@|@"])
  fun op richAccts_case_cong x = x
    val op richAccts_case_cong =
    ThmBind.DT(((("exam2",162),
                [("bool",[26,180]),
                 ("exam2",[155,156,157,158])]),["DISK_THM"]),
               [ThmBind.read"%172%15%172%25%148%68%203%182%200$2@$1@2%165%48%203%200$2@%264$0@3%185$1$0@2%74$0@3|@3%185%306$2@$0@2%306$1@%74@3|@|@|@"])
  fun op richAccts_nchotomy x = x
    val op richAccts_nchotomy =
    ThmBind.DT(((("exam2",163),
                [("bool",[26,180]),("exam2",[155,156,157])]),["DISK_THM"]),
               [ThmBind.read"%172%128%228%100%200$1@%264$0@2|@|@"])
  fun op richAccts_Axiom x = x
    val op richAccts_Axiom =
    ThmBind.DT(((("exam2",164),
                [("bool",[26,180]),("exam2",[155,156,157]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%148%68%218%94%165%48%185$1%264$0@3$2$0@2|@|@|@"])
  fun op richAccts_induction x = x
    val op richAccts_induction =
    ThmBind.DT(((("exam2",165),
                [("bool",[26]),("exam2",[155,156,157])]),["DISK_THM"]),
               [ThmBind.read"%156%37%203%165%100$1%264$0@2|@2%172%111$1$0@|@2|@"])
  fun op exam2_1_thm x = x
    val op exam2_1_thm =
    ThmBind.DT(((("exam2",166),[("aclDrules",[3,16])]),["DISK_THM"]),
               [ThmBind.read"%314%176%6@%180%28@%29@3%304%231%256@3",
                ThmBind.read"%314%176%6@%180%28@%29@3%286%259%267%255@3%286%259%261%280%256@4%304%231%256@5",
                ThmBind.read"%314%176%6@%180%28@%29@3%317%259%261%280%256@4%304%231%256@4",
                ThmBind.read"%314%176%6@%180%28@%29@3%317%259%263%280%256@4%286%259%261%280%256@4%304%231%256@5",
                ThmBind.read"%314%176%6@%180%28@%29@3%319%259%263%280%256@4%259%267%255@4"])
  fun op exam2_2_thm x = x
    val op exam2_2_thm =
    ThmBind.DT(((("exam2",167),[("aclDrules",[3,16])]),["DISK_THM"]),
               [ThmBind.read"%315%177%7@%180%28@%29@3%305%264%251%253@4",
                ThmBind.read"%315%177%7@%180%28@%29@3%285%258%268%245@3%285%287%258%262%251%253@4%287%258%254%251%253@4%258%239%257%237%238%237%237%238%237%237%237%238%238%237%237%238%238%237%238%237%237%238%238%237%238%237%237%237%238%237%238%238%237%238%238%238%238%237%238%237%238%237%238%238%238%237%237%237%237%237%237%238%237%237%237%281@58%305%264%251%253@6",
                ThmBind.read"%315%177%7@%180%28@%29@3%316%258%260%251%253@4%285%287%258%262%251%253@4%287%258%254%251%253@4%258%239%257%237%238%237%237%238%237%237%237%238%238%237%237%238%238%237%238%237%237%238%238%237%238%237%237%237%238%237%238%238%237%238%238%238%238%237%238%237%238%237%238%238%238%237%237%237%237%237%237%238%237%237%237%281@58%305%264%251%253@6",
                ThmBind.read"%315%177%7@%180%28@%29@3%316%287%258%262%251%253@4%287%258%254%251%253@4%258%239%257%237%238%237%237%238%237%237%237%238%238%237%237%238%238%237%238%237%237%238%238%237%238%237%237%237%238%237%238%238%237%238%238%238%238%237%238%237%238%237%238%238%238%237%237%237%237%237%237%238%237%237%237%281@58%305%264%251%253@5",
                ThmBind.read"%315%177%7@%180%28@%29@3%318%258%260%251%253@4%258%268%245@4"])

  val _ = DB.bindl "exam2"
  [("roles_TY_DEF",roles_TY_DEF,DB.Def), ("roles_BIJ",roles_BIJ,DB.Def),
   ("roles_size_def",roles_size_def,DB.Def),
   ("roles_CASE",roles_CASE,DB.Def),
   ("people_TY_DEF",people_TY_DEF,DB.Def),
   ("people_BIJ",people_BIJ,DB.Def),
   ("people_size_def",people_size_def,DB.Def),
   ("people_CASE",people_CASE,DB.Def),
   ("passPrinc_TY_DEF",passPrinc_TY_DEF,DB.Def),
   ("passPrinc_case_def",passPrinc_case_def,DB.Def),
   ("passPrinc_size_def",passPrinc_size_def,DB.Def),
   ("principals_TY_DEF",principals_TY_DEF,DB.Def),
   ("principals_case_def",principals_case_def,DB.Def),
   ("principals_size_def",principals_size_def,DB.Def),
   ("accounts_TY_DEF",accounts_TY_DEF,DB.Def),
   ("accounts_case_def",accounts_case_def,DB.Def),
   ("accounts_size_def",accounts_size_def,DB.Def),
   ("people2_TY_DEF",people2_TY_DEF,DB.Def),
   ("people2_BIJ",people2_BIJ,DB.Def),
   ("people2_size_def",people2_size_def,DB.Def),
   ("people2_CASE",people2_CASE,DB.Def),
   ("roles2_TY_DEF",roles2_TY_DEF,DB.Def),
   ("roles2_BIJ",roles2_BIJ,DB.Def),
   ("roles2_size_def",roles2_size_def,DB.Def),
   ("roles2_CASE",roles2_CASE,DB.Def),
   ("pinIdPrinc_TY_DEF",pinIdPrinc_TY_DEF,DB.Def),
   ("pinIdPrinc_case_def",pinIdPrinc_case_def,DB.Def),
   ("pinIdPrinc_size_def",pinIdPrinc_size_def,DB.Def),
   ("RichesPrincipals_TY_DEF",RichesPrincipals_TY_DEF,DB.Def),
   ("RichesPrincipals_case_def",RichesPrincipals_case_def,DB.Def),
   ("RichesPrincipals_size_def",RichesPrincipals_size_def,DB.Def),
   ("richAccts_TY_DEF",richAccts_TY_DEF,DB.Def),
   ("richAccts_case_def",richAccts_case_def,DB.Def),
   ("richAccts_size_def",richAccts_size_def,DB.Def),
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
   ("people_case_cong",people_case_cong,DB.Thm),
   ("people_nchotomy",people_nchotomy,DB.Thm),
   ("people_Axiom",people_Axiom,DB.Thm),
   ("people_induction",people_induction,DB.Thm),
   ("datatype_passPrinc",datatype_passPrinc,DB.Thm),
   ("passPrinc_11",passPrinc_11,DB.Thm),
   ("passPrinc_case_cong",passPrinc_case_cong,DB.Thm),
   ("passPrinc_nchotomy",passPrinc_nchotomy,DB.Thm),
   ("passPrinc_Axiom",passPrinc_Axiom,DB.Thm),
   ("passPrinc_induction",passPrinc_induction,DB.Thm),
   ("datatype_principals",datatype_principals,DB.Thm),
   ("principals_11",principals_11,DB.Thm),
   ("principals_distinct",principals_distinct,DB.Thm),
   ("principals_case_cong",principals_case_cong,DB.Thm),
   ("principals_nchotomy",principals_nchotomy,DB.Thm),
   ("principals_Axiom",principals_Axiom,DB.Thm),
   ("principals_induction",principals_induction,DB.Thm),
   ("datatype_accounts",datatype_accounts,DB.Thm),
   ("accounts_11",accounts_11,DB.Thm),
   ("accounts_case_cong",accounts_case_cong,DB.Thm),
   ("accounts_nchotomy",accounts_nchotomy,DB.Thm),
   ("accounts_Axiom",accounts_Axiom,DB.Thm),
   ("accounts_induction",accounts_induction,DB.Thm),
   ("num2people2_people22num",num2people2_people22num,DB.Thm),
   ("people22num_num2people2",people22num_num2people2,DB.Thm),
   ("num2people2_11",num2people2_11,DB.Thm),
   ("people22num_11",people22num_11,DB.Thm),
   ("num2people2_ONTO",num2people2_ONTO,DB.Thm),
   ("people22num_ONTO",people22num_ONTO,DB.Thm),
   ("num2people2_thm",num2people2_thm,DB.Thm),
   ("people22num_thm",people22num_thm,DB.Thm),
   ("people2_EQ_people2",people2_EQ_people2,DB.Thm),
   ("people2_case_def",people2_case_def,DB.Thm),
   ("datatype_people2",datatype_people2,DB.Thm),
   ("people2_case_cong",people2_case_cong,DB.Thm),
   ("people2_nchotomy",people2_nchotomy,DB.Thm),
   ("people2_Axiom",people2_Axiom,DB.Thm),
   ("people2_induction",people2_induction,DB.Thm),
   ("num2roles2_roles22num",num2roles2_roles22num,DB.Thm),
   ("roles22num_num2roles2",roles22num_num2roles2,DB.Thm),
   ("num2roles2_11",num2roles2_11,DB.Thm),
   ("roles22num_11",roles22num_11,DB.Thm),
   ("num2roles2_ONTO",num2roles2_ONTO,DB.Thm),
   ("roles22num_ONTO",roles22num_ONTO,DB.Thm),
   ("num2roles2_thm",num2roles2_thm,DB.Thm),
   ("roles22num_thm",roles22num_thm,DB.Thm),
   ("roles2_EQ_roles2",roles2_EQ_roles2,DB.Thm),
   ("roles2_case_def",roles2_case_def,DB.Thm),
   ("datatype_roles2",datatype_roles2,DB.Thm),
   ("roles2_case_cong",roles2_case_cong,DB.Thm),
   ("roles2_nchotomy",roles2_nchotomy,DB.Thm),
   ("roles2_Axiom",roles2_Axiom,DB.Thm),
   ("roles2_induction",roles2_induction,DB.Thm),
   ("datatype_pinIdPrinc",datatype_pinIdPrinc,DB.Thm),
   ("pinIdPrinc_11",pinIdPrinc_11,DB.Thm),
   ("pinIdPrinc_case_cong",pinIdPrinc_case_cong,DB.Thm),
   ("pinIdPrinc_nchotomy",pinIdPrinc_nchotomy,DB.Thm),
   ("pinIdPrinc_Axiom",pinIdPrinc_Axiom,DB.Thm),
   ("pinIdPrinc_induction",pinIdPrinc_induction,DB.Thm),
   ("datatype_RichesPrincipals",datatype_RichesPrincipals,DB.Thm),
   ("RichesPrincipals_11",RichesPrincipals_11,DB.Thm),
   ("RichesPrincipals_distinct",RichesPrincipals_distinct,DB.Thm),
   ("RichesPrincipals_case_cong",RichesPrincipals_case_cong,DB.Thm),
   ("RichesPrincipals_nchotomy",RichesPrincipals_nchotomy,DB.Thm),
   ("RichesPrincipals_Axiom",RichesPrincipals_Axiom,DB.Thm),
   ("RichesPrincipals_induction",RichesPrincipals_induction,DB.Thm),
   ("datatype_richAccts",datatype_richAccts,DB.Thm),
   ("richAccts_11",richAccts_11,DB.Thm),
   ("richAccts_case_cong",richAccts_case_cong,DB.Thm),
   ("richAccts_nchotomy",richAccts_nchotomy,DB.Thm),
   ("richAccts_Axiom",richAccts_Axiom,DB.Thm),
   ("richAccts_induction",richAccts_induction,DB.Thm),
   ("exam2_1_thm",exam2_1_thm,DB.Thm), ("exam2_2_thm",exam2_2_thm,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exam2",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY5.exam2,5.rolesNTY5.exam2,6.peopleNTY5.exam2,9.passPrincNTY5.exam2,10.principalsNTY5.exam2,8.accountsNTY5.exam2,7.people2NTY5.exam2,6.roles2NTY5.exam2,10.pinIdPrincNTY5.exam2,16.RichesPrincipalsNTY5.exam2,9.richAccts"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exam2",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO9.roles2num4.%311OO9.num2roles4.%290OO13.KennedyCenter4.%255OO10.roles_size4.%313OO10.roles_CASE4.%312OO4.case4.%312OO10.people2num4.%297OO10.num2people4.%288OO4.Mary4.%256OO11.people_size4.%299OO11.people_CASE4.%298OO4.case4.%298OO5.Users4.%280OO14.passPrinc_CASE4.%292OO14.passPrinc_size4.%293OO4.case4.%292OO2.PR4.%261OO4.Pass4.%263OO4.Role4.%267OO15.principals_CASE4.%302OO15.principals_size4.%303OO4.case4.%302OO2.AC4.%231OO13.accounts_CASE4.%283OO13.accounts_size4.%284OO4.case4.%283OO11.people22num4.%294OO11.num2people24.%289OO3.Don4.%253OO12.people2_size4.%296OO12.people2_CASE4.%295OO4.case4.%295OO10.roles22num4.%308OO10.num2roles24.%291OO12.BankOfRiches4.%245OO11.roles2_size4.%310OO11.roles2_CASE4.%309OO4.case4.%309OO6.Client4.%251OO15.pinIdPrinc_CASE4.%300OO15.pinIdPrinc_size4.%301OO4.case4.%300OO3.PR24.%262OO3.PIN4.%260OO2.ID4.%254OO5.Role24.%268OO2.BN4.%239OO21.RichesPrincipals_CASE4.%265OO21.RichesPrincipals_size4.%266OO4.case4.%265OO3.RAC4.%264OO14.richAccts_CASE4.%306OO14.richAccts_size4.%307OO4.case4.%306"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val exam2_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="exam2"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val exam2_grammars = 
    Portable.## (addtyUDs,addtmUDs) exam2_grammars
  val _ = Parse.grammarDB_insert("exam2",exam2_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


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
           size=SOME(Parse.Term`(exam2$roles_size) :exam2$roles -> num$num`,
                     ORIG roles_size_def),
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
        val tyinfo0 = EnumType.update_tyinfo num2roles_thm roles2num_thm (SOME ("roles", roles_EQ_roles)) tyinfo0
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
           size=SOME(Parse.Term`(exam2$people_size) :exam2$people -> num$num`,
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
          {ax=ORIG passPrinc_Axiom,
           case_def=passPrinc_case_def,
           case_cong=passPrinc_case_cong,
           induction=ORIG passPrinc_induction,
           nchotomy=passPrinc_nchotomy,
           size=SOME(Parse.Term`(exam2$passPrinc_size) :exam2$passPrinc -> num$num`,
                     ORIG passPrinc_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME passPrinc_11,
           distinct=NONE,
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
           size=SOME(Parse.Term`(exam2$principals_size) :exam2$principals -> num$num`,
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


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG accounts_Axiom,
           case_def=accounts_case_def,
           case_cong=accounts_case_cong,
           induction=ORIG accounts_induction,
           nchotomy=accounts_nchotomy,
           size=SOME(Parse.Term`(exam2$accounts_size) :exam2$accounts -> num$num`,
                     ORIG accounts_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME accounts_11,
           distinct=NONE,
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
          {ax=ORIG people2_Axiom,
           case_def=people2_case_def,
           case_cong=people2_case_cong,
           induction=ORIG people2_induction,
           nchotomy=people2_nchotomy,
           size=SOME(Parse.Term`(exam2$people2_size) :exam2$people2 -> num$num`,
                     ORIG people2_size_def),
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
        val tyinfo0 = EnumType.update_tyinfo num2people2_thm people22num_thm (SOME ("people2", people2_EQ_people2)) tyinfo0
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
          {ax=ORIG roles2_Axiom,
           case_def=roles2_case_def,
           case_cong=roles2_case_cong,
           induction=ORIG roles2_induction,
           nchotomy=roles2_nchotomy,
           size=SOME(Parse.Term`(exam2$roles2_size) :exam2$roles2 -> num$num`,
                     ORIG roles2_size_def),
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
        val tyinfo0 = EnumType.update_tyinfo num2roles2_thm roles22num_thm (SOME ("roles2", roles2_EQ_roles2)) tyinfo0
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
          {ax=ORIG pinIdPrinc_Axiom,
           case_def=pinIdPrinc_case_def,
           case_cong=pinIdPrinc_case_cong,
           induction=ORIG pinIdPrinc_induction,
           nchotomy=pinIdPrinc_nchotomy,
           size=SOME(Parse.Term`(exam2$pinIdPrinc_size) :exam2$pinIdPrinc -> num$num`,
                     ORIG pinIdPrinc_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME pinIdPrinc_11,
           distinct=NONE,
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
          {ax=ORIG RichesPrincipals_Axiom,
           case_def=RichesPrincipals_case_def,
           case_cong=RichesPrincipals_case_cong,
           induction=ORIG RichesPrincipals_induction,
           nchotomy=RichesPrincipals_nchotomy,
           size=SOME(Parse.Term`(exam2$RichesPrincipals_size) :exam2$RichesPrincipals -> num$num`,
                     ORIG RichesPrincipals_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME RichesPrincipals_11,
           distinct=SOME RichesPrincipals_distinct,
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
          {ax=ORIG richAccts_Axiom,
           case_def=richAccts_case_def,
           case_cong=richAccts_case_cong,
           induction=ORIG richAccts_induction,
           nchotomy=richAccts_nchotomy,
           size=SOME(Parse.Term`(exam2$richAccts_size) :exam2$richAccts -> num$num`,
                     ORIG richAccts_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME richAccts_11,
           distinct=NONE,
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
val _ = Theory.load_complete "exam2"
end
