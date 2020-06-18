structure exam3Script = struct

(* only necessary when working interactively
app load ["acl_infRules","aclrulesTheory","aclDrulesTheory","exam3Theory", "cipherTheory"]
open acl_infRules aclrulesTheory aclDrulesTheory cipherTheory exam3Theory
*)

open HolKernel boolLib Parse bossLib
open acl_infRules aclrulesTheory aclDrulesTheory cipherTheory

val _ = new_theory "exam3"

val _ =
Datatype
`commands = go | launch`

val _ =
Datatype
`roles = Employee | Relay`

val _ =
Datatype
`people = Alice | Bob`

val _ =
Datatype
`keyPrinc = Staff exam3$people | Role exam3$roles | Ap num`  

val _ =
Datatype
`principals = PR keyPrinc | Key keyPrinc`

(* Relay derived inference rule

   Role Employee controls prop go ==>
   Alice Reps Employee on go ==>
   Key Alice speaks_for Alice ==>
   Key Alice says prop go ==>
   prop go impf prop launch ==>
   Key Bob quoting Role Relay says prop launch


set_goal
([],
``(M,Oi,Os) sat Name (PR (Role Employee)) controls prop go ==>
  (M,Oi,Os) sat
  reps (Name (PR (Staff Alice))) (Name (PR (Role Employee)))
  (prop go) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Alice)) quoting
  Name (PR (Role Employee)) says prop go ==>
  (M,Oi,Os) sat prop go impf prop launch ==>
  (M,Oi,Os) sat
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Bob)) quoting Name (PR (Role Relay)) says
  prop launch``)
REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN

PAT_ASSUM ``(M,Oi,Os) sat Name (Key (Staff Alice)) quoting
            Name (PR (Role Employee)) says prop go``
  (fn th => ASSUME_TAC (QUOTING_LR th)) THEN
		  
PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Staff Alice)) says
      Name (PR (Role Employee)) says (prop go)``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (PR (Staff Alice)) says Name (PR (Role Employee)) says
            (prop go)``
  (fn th => ASSUME_TAC (QUOTING_RL th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
           reps (Name (PR (Staff Alice))) (Name (PR (Role Employee)))(prop go)``
  (fn th1 =>
    (PAT_ASSUM ``(M,Oi,Os) sat
    Name (PR (Staff Alice)) quoting Name (PR (Role Employee)) says
    (prop go)``
      (fn th2 =>
        (PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role Employee)) controls (prop go)``
	  (fn th3 => ASSUME_TAC (REPS th1 th2 th3)))))) THEN

PAT_ASSUM ``(M,Oi,Os) sat (prop go)`` (fn th1 =>
  (PAT_ASSUM ``(M,Oi,Os) sat prop go impf prop launch``
    (fn th2 => ASSUME_TAC (ACL_MP th1 th2)))) THEN

ASM_REWRITE_TAC[]

*)   
   
val RelayRuleLaunch =
TAC_PROOF(
([],
``(M,Oi,Os) sat Name (PR (Role Employee)) controls prop go ==>
  (M,Oi,Os) sat
  reps (Name (PR (Staff Alice))) (Name (PR (Role Employee)))
  (prop go) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Alice)) quoting
  Name (PR (Role Employee)) says prop go ==>
  (M,Oi,Os) sat prop go impf prop launch ==>
  (M,Oi,Os) sat
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Bob)) quoting Name (PR (Role Relay)) says
  prop launch``),
REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN

PAT_ASSUM ``(M,Oi,Os) sat Name (Key (Staff Alice)) quoting
            Name (PR (Role Employee)) says prop go``
  (fn th => ASSUME_TAC (QUOTING_LR th)) THEN
		  
PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Staff Alice)) says
      Name (PR (Role Employee)) says (prop go)``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (PR (Staff Alice)) says Name (PR (Role Employee)) says
            (prop go)``
  (fn th => ASSUME_TAC (QUOTING_RL th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
           reps (Name (PR (Staff Alice))) (Name (PR (Role Employee)))(prop go)``
  (fn th1 =>
    (PAT_ASSUM ``(M,Oi,Os) sat
    Name (PR (Staff Alice)) quoting Name (PR (Role Employee)) says
    (prop go)``
      (fn th2 =>
        (PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role Employee)) controls (prop go)``
	  (fn th3 => ASSUME_TAC (REPS th1 th2 th3)))))) THEN

PAT_ASSUM ``(M,Oi,Os) sat (prop go)`` (fn th1 =>
  (PAT_ASSUM ``(M,Oi,Os) sat prop go impf prop launch``
    (fn th2 => ASSUME_TAC (ACL_MP th1 th2)))) THEN

ASM_REWRITE_TAC[]);

val _ = save_thm("RelayRuleLaunch",RelayRuleLaunch)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)