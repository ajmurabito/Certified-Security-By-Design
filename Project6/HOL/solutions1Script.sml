(***************************************************)
(* Project 6:  solutions1Script.sml                *)
(* Alfred Murabito                                 *)
(* Date: 22 February 2020                           *)
(***************************************************)

(* Exercise 13.10.1 [Alice says gp, Bob says go] -| Alice & Bob says go *)

structure solutions1Script = struct

(* only necessary when working interactively
app load ["acl_infRules","aclrulesTheory","aclDrulesTheory","solutions1Theory"];
open acl_infRules aclrulesTheory aclDrulesTheory example1Theory solutions1Theory
*)

open HolKernel boolLib Parse bossLib example1Theory
open acl_infRules aclrulesTheory aclDrulesTheory example1Theory

val _ = new_theory "solutions1"

val th1 = ACL_ASSUM``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``
val th2 = ACL_ASSUM``((Name Bob) says (prop go)):(commands,staff,'d,'e)Form``;
val th3 = ACL_CONJ th1 th2
val th4 = AND_SAYS_RL th3
val th5 = DISCH(hd(hyp th1)) th4
val th6 = DISCH(hd(hyp th2)) th5

val aclExercise1 =
let
  val th1 = ACL_ASSUM``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``
  val th2 = ACL_ASSUM``((Name Bob) says (prop go)):(commands,staff,'d,'e)Form``;
  val th3 = ACL_CONJ th1 th2
  val th4 = AND_SAYS_RL th3
  val th5 = DISCH(hd(hyp th1)) th4
in
   DISCH(hd(hyp th2)) th5
end;

val _ = save_thm("aclExercise1", aclExercise1)

val aclExercise1A =
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Bob says (prop go) ==>
  (M,Oi,Os) sat Name Alice meet Name Bob says (prop go)``),
PROVE_TAC[SPEC_ALL Conjunction, GSYM(SPEC_ALL And_Says_Eq)])

val _ = save_thm("aclExercise1A", aclExercise1A)

(* interactive mode ===
set_goal([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Bob says (prop go) ==>
  (M,Oi,Os) sat Name Alice meet Name Bob says (prop go)``);
e(REPEAT STRIP_TAC);
e(ACL_AND_SAYS_RL_TAC);
e(ACL_CONJ_TAC THEN PROVE_TAC []);
=== end interactive mode*)

val aclExercise1B =
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Bob says (prop go) ==>
  (M,Oi,Os) sat Name Alice meet Name Bob says (prop go)``),
REPEAT STRIP_TAC THEN
ACL_AND_SAYS_RL_TAC THEN
ACL_CONJ_TAC THEN PROVE_TAC [])

val _ = save_thm("aclExercise1B", aclExercise1B)

(* Exercise 13.10.2
val th1 = ACL_ASSUM``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;
val th2 = ACL_ASSUM``((Name Alice) controls (prop go)):(commands,staff,'d,'e)Form``;
val th3 = CONTROLS th2 th1;
val th4 = ACL_ASSUM``((prop go) impf (prop launch)):(commands,staff,'d,'e)Form``;
val th5 = ACL_MP th3 th4;
val th6 = SAYS ``Name Bob`` th5;
*)

val aclExercise2 =
let
  val th1 = ACL_ASSUM``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``
  val th2 = ACL_ASSUM``((Name Alice) controls (prop go)):(commands,staff,'d,'e)Form``
  val th3 = CONTROLS th2 th1
  val th4 = ACL_ASSUM``((prop go) impf (prop launch)):(commands,staff,'d,'e)Form``
  val th5 = ACL_MP th3 th4
in
  SAYS ``Name Bob`` th5
end;

val _ = save_thm("aclExercise2", aclExercise2)

(* interactive mode
set_goal([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po))
  sat Name Alice says (prop go) ==>
  (M,Oi,Os) sat (Name Alice) controls (prop go) ==>
  (M,Oi,Os) sat (prop go) impf (prop launch) ==>
  (M,Oi,Os) sat (Name Bob) says (prop launch)``);
end interactive mode *)

  
val aclExercise2A =
TAC_PROOF(
([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po))
  sat Name Alice says (prop go) ==>
  (M,Oi,Os) sat (Name Alice) controls (prop go) ==>
  (M,Oi,Os) sat (prop go) impf (prop launch) ==>
  (M,Oi,Os) sat (Name Bob) says (prop launch)``),
PROVE_TAC[Says, Controls, Modus_Ponens]);

val _ = save_thm("aclExercise2A", aclExercise2A)

(* interactive mode
set_goal([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po))
  sat Name Alice says (prop go) ==>
  (M,Oi,Os) sat (Name Alice) controls (prop go) ==>
  (M,Oi,Os) sat (prop go) impf (prop launch) ==>
  (M,Oi,Os) sat (Name Bob) says (prop launch)``);
  REPEAT STRIP_TAC THEN
  ACL_SAYS_TAC THEN
  PAT_ASSUM ``(M,Oi,Os) sat (Name Alice) says (prop go)``
    (fn th1 =>
      (PAT_ASSUM
      ``(M,Oi,Os) sat (Name Alice) controls (prop go)``
      (fn th2 => ASSUME_TAC(CONTROLS th2 th1)))) THEN
   PAT_ASSUM ``(M,Oi,Os) sat (prop go)``
    (fn th1 =>
      (PAT_ASSUM
      ``(M,Oi,Os) sat (prop go) impf (prop launch)``
      (fn th2 => ASSUME_TAC(ACL_MP th1 th2)))) THEN
   ASM_REWRITE_TAC []
end interactive mode *)

val aclExercise2B =
TAC_PROOF(
([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po))
  sat Name Alice says (prop go) ==>
  (M,Oi,Os) sat (Name Alice) controls (prop go) ==>
  (M,Oi,Os) sat (prop go) impf (prop launch) ==>
  (M,Oi,Os) sat (Name Bob) says (prop launch)``),
  REPEAT STRIP_TAC THEN
  ACL_SAYS_TAC THEN
  PAT_ASSUM ``(M,Oi,Os) sat (Name Alice) says (prop go)``
    (fn th1 =>
      (PAT_ASSUM
      ``(M,Oi,Os) sat (Name Alice) controls (prop go)``
      (fn th2 => ASSUME_TAC(CONTROLS th2 th1)))) THEN
   PAT_ASSUM ``(M,Oi,Os) sat (prop go)``
    (fn th1 =>
      (PAT_ASSUM
      ``(M,Oi,Os) sat (prop go) impf (prop launch)``
      (fn th2 => ASSUME_TAC(ACL_MP th1 th2)))) THEN
   ASM_REWRITE_TAC []
);

val _ = save_thm("aclExercise2B", aclExercise2B)


val _ = print_theory "-";

val _ = export_theory();

end (* structure *)