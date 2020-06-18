(******************************************************************************)
(* Exam 4: Simple Opener Theory                                               *)
(* Alfred Murabito                                                            *)
(* March 26 2020                                                              *)
(******************************************************************************)

structure simpleOpenerScript = struct

(* interactive mode
app load ["TypeBase","smTheory","sminfRules","simpleOpenerTheory"];
open TypeBase smTheory sminfRules simpleOpenerTheory
*)

open HolKernel boolLib Parse bossLib
open TypeBase smTheory sminfRules

val _ = new_theory "simpleOpener"

(* -------------------------------------------------------------------------- *)
(* Define the inputs                                                          *)
(* -------------------------------------------------------------------------- *)
val _ =
Datatype
`command = i0 | i1`

val command_distinct_clauses = distinct_of ``:command``
val _ = save_thm("command_distinct_clauses",command_distinct_clauses)

(* -------------------------------------------------------------------------- *)
(* Define the states                                                          *)
(* -------------------------------------------------------------------------- *)
val _ =
Datatype
`state = S0 | S1`

val state_distinct_clauses = distinct_of ``:state``
val _ = save_thm("state_distinct_clauses",state_distinct_clauses)

(* -------------------------------------------------------------------------- *)
(* Define the outputs                                                         *)
(* -------------------------------------------------------------------------- *)
val _ =
Datatype
`output = o0 | o1`

val output_distinct_clauses = distinct_of ``:output``
val _ = save_thm("output_distinct_clauses",output_distinct_clauses)

(* -------------------------------------------------------------------------- *)
(* Define next-state function for machine simpleOpener                        *)
(* -------------------------------------------------------------------------- *)
val simpleOpenerns_def =
Define`(simpleOpenerns S0 i1 = S1) /\ (simpleOpenerns S1 i0 = S0)`

(* -------------------------------------------------------------------------- *)
(* Define next-output function for machine simpleOpener                       *)
(* -------------------------------------------------------------------------- *)
val simpleOpenerout_def =
Define`(simpleOpenerout S0 i1 = o1) /\ (simpleOpenerout S1 i0 = o0)`

(* -------------------------------------------------------------------------- *)
(* Specialize TR_rules to simpleOpener                                        *)
(* -------------------------------------------------------------------------- *)
val simpleOpenerTR_rules = SPEC_TR ``simpleOpenerns`` ``simpleOpenerout``

val _ = save_thm("simpleOpenerTR_rules",simpleOpenerTR_rules)

(* -------------------------------------------------------------------------- *)
(* Specialize TR_clauses to simpleOpener                                      *)
(* -------------------------------------------------------------------------- *)
val simpleOpenerTR_clauses = SPEC_TR_clauses ``simpleOpenerns`` ``simpleOpenerout``

val _ = save_thm("simpleOpenerTR_clauses",simpleOpenerTR_clauses)

(* -------------------------------------------------------------------------- *)
(* Specialized Trans_Equiv_TR theorem to simpleOpener                         *)
(* -------------------------------------------------------------------------- *)
val simpleOpenerTrans_Equiv_TR = SPEC_Trans_Equiv_TR ``simpleOpenerns`` ``simpleOpenerout``

val _ = save_thm("simpleOpenerTrans_Equiv_TR",simpleOpenerTrans_Equiv_TR)

(* -------------------------------------------------------------------------- *)
(* Theorems corresponding to the tabular specification of simpleOpener        *)
(* -------------------------------------------------------------------------- *)
val th1 = REWRITE_RULE[simpleOpenerns_def,simpleOpenerout_def](SPECL[``S0``,``i1``] simpleOpenerTR_rules)
val th2 = REWRITE_RULE[simpleOpenerns_def,simpleOpenerout_def](SPECL[``S1``,``i0``] simpleOpenerTR_rules)


val simpleCounter_rules = LIST_CONJ [th1,th2]

val _ = save_thm("simpleCounter_rules",simpleCounter_rules)

val _ = export_theory ()
val _ = print_theory "-"

end