(***************************************************)
(* Project 6:  conops0SolutionScript.sml                *)
(* Alfred Murabito                                 *)
(* Date: 2 February 2020                           *)
(***************************************************)

structure conops0SolutionScript = struct

(* only necessary when working interactively
app load ["acl_infRules","aclrulesTheory","aclDrulesTheory","conops0SolutionTheory"]
open acl_infRules aclrulesTheory aclDrulesTheory conops0SolutionTheory
*)

open HolKernel boolLib Parse bossLib
open acl_infRules aclrulesTheory aclDrulesTheory 

val _ = new_theory "conops0Solution"

val _ =
Datatype
`commands = go | nogo | launch | abort | activate | stand_down`

val _ =
Datatype
`people = Alice | Bob`

val _ =
Datatype
`roles = Commander | Operator | CA`

val _ =
Datatype
`keyPrinc = Staff conops0Solution$people | Role conops0Solution$roles | Ap num`

val _ =
Datatype
`principals = PR keyPrinc | Key keyPrinc`

(* interactive mode

set_goal
([],
``(M,Oi,Os) sat Name (PR (Role Commander)) controls prop go ==>
  (M,Oi,Os) sat
  reps (Name (PR (Staff Alice))) (Name (PR (Role Commander)))
  (prop go) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Alice)) quoting
  Name (PR (Role Commander)) says prop go ==>
  (M,Oi,Os) sat prop go impf prop launch ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) speaks_for Name (PR (Role CA)) ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) says
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (PR (Role CA)) controls
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Bob)) quoting Name (PR (Role Operator)) says
  prop launch``
);

REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN
PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Role CA)) speaks_for Name (PR (Role CA))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Role CA)) says
      Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role CA)) controls
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (PR (Role CA)) says
      Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
    (fn th2 => ASSUME_TAC(CONTROLS th1 th2)))) THEN

(* Derive Key Alice says Commander says go *)
PAT_ASSUM ``(M,Oi,Os) sat Name (Key (Staff Alice)) quoting
            Name (PR (Role Commander)) says prop go``
  (fn th => ASSUME_TAC (QUOTING_LR th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Staff Alice)) says
      Name (PR (Role Commander)) says (prop go)``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (PR (Staff Alice)) says Name (PR (Role Commander)) says
            (prop go)``
  (fn th => ASSUME_TAC (QUOTING_RL th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
           reps (Name (PR (Staff Alice))) (Name (PR (Role Commander)))(prop go)``
  (fn th1 =>
    (PAT_ASSUM ``(M,Oi,Os) sat
    Name (PR (Staff Alice)) quoting Name (PR (Role Commander)) says
    (prop go)``
      (fn th2 =>
        (PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role Commander)) controls (prop go)``
	  (fn th3 => ASSUME_TAC (REPS th1 th2 th3)))))) THEN

PAT_ASSUM ``(M,Oi,Os) sat (prop go)`` (fn th1 =>
  (PAT_ASSUM ``(M,Oi,Os) sat prop go impf prop launch``
    (fn th2 => ASSUME_TAC (ACL_MP th1 th2)))) THEN

ASM_REWRITE_TAC[]
*)

val OpRuleLaunch_thm =
TAC_PROOF(
([], ``(M,Oi,Os) sat Name (PR (Role Commander)) controls prop go ==>
  (M,Oi,Os) sat
  reps (Name (PR (Staff Alice))) (Name (PR (Role Commander)))
  (prop go) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Alice)) quoting
  Name (PR (Role Commander)) says prop go ==>
  (M,Oi,Os) sat prop go impf prop launch ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) speaks_for Name (PR (Role CA)) ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) says
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (PR (Role CA)) controls
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Bob)) quoting Name (PR (Role Operator)) says
  prop launch``),
REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN
PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Role CA)) speaks_for Name (PR (Role CA))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Role CA)) says
      Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role CA)) controls
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (PR (Role CA)) says
      Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
    (fn th2 => ASSUME_TAC(CONTROLS th1 th2)))) THEN

(* Derive Key Alice says Commander says go *)
PAT_ASSUM ``(M,Oi,Os) sat Name (Key (Staff Alice)) quoting
            Name (PR (Role Commander)) says prop go``
  (fn th => ASSUME_TAC (QUOTING_LR th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Staff Alice)) says
      Name (PR (Role Commander)) says (prop go)``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (PR (Staff Alice)) says Name (PR (Role Commander)) says
            (prop go)``
  (fn th => ASSUME_TAC (QUOTING_RL th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
           reps (Name (PR (Staff Alice))) (Name (PR (Role Commander)))(prop go)``
  (fn th1 =>
    (PAT_ASSUM ``(M,Oi,Os) sat
    Name (PR (Staff Alice)) quoting Name (PR (Role Commander)) says
    (prop go)``
      (fn th2 =>
        (PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role Commander)) controls (prop go)``
	  (fn th3 => ASSUME_TAC (REPS th1 th2 th3)))))) THEN


PAT_ASSUM ``(M,Oi,Os) sat (prop go)`` (fn th1 =>
  (PAT_ASSUM ``(M,Oi,Os) sat prop go impf prop launch``
    (fn th2 => ASSUME_TAC (ACL_MP th1 th2)))) THEN

ASM_REWRITE_TAC[]
)


val ApRuleActive_thm =
TAC_PROOF(
([], ``(M,Oi,Os) sat Name (PR (Role Operator)) controls prop launch ==>
  (M,Oi,Os) sat
  reps (Name (PR (Staff Bob))) (Name (PR (Role Operator)))
  (prop launch) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Bob)) quoting
  Name (PR (Role Operator)) says prop launch ==>
  (M,Oi,Os) sat prop launch impf prop activate ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) speaks_for Name (PR (Role CA)) ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) says
  Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob)) ==>
  (M,Oi,Os) sat
  Name (PR (Role CA)) controls
  Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob)) ==>
  (M,Oi,Os) sat
  prop activate``),
REPEAT STRIP_TAC THEN
PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Role CA)) speaks_for Name (PR (Role CA))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Role CA)) says
      Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role CA)) controls
            Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (PR (Role CA)) says
      Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
    (fn th2 => ASSUME_TAC(CONTROLS th1 th2)))) THEN

(* Derive Key Bob says Operator says launch *)
PAT_ASSUM ``(M,Oi,Os) sat Name (Key (Staff Bob)) quoting
            Name (PR (Role Operator)) says prop launch``
  (fn th => ASSUME_TAC (QUOTING_LR th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Staff Bob)) says
      Name (PR (Role Operator)) says (prop launch)``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (PR (Staff Bob)) says Name (PR (Role Operator)) says
            (prop launch)``
  (fn th => ASSUME_TAC (QUOTING_RL th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
           reps (Name (PR (Staff Bob))) (Name (PR (Role Operator)))(prop launch)``
  (fn th1 =>
    (PAT_ASSUM ``(M,Oi,Os) sat
    Name (PR (Staff Bob)) quoting Name (PR (Role Operator)) says
    (prop launch)``
      (fn th2 =>
        (PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role Operator)) controls (prop launch)``
	  (fn th3 => ASSUME_TAC (REPS th1 th2 th3)))))) THEN


PAT_ASSUM ``(M,Oi,Os) sat (prop launch)`` (fn th1 =>
  (PAT_ASSUM ``(M,Oi,Os) sat prop launch impf prop activate``
    (fn th2 => ASSUME_TAC (ACL_MP th1 th2)))) THEN

ASM_REWRITE_TAC[]
)

val OpRuleAbort_thm =
TAC_PROOF(
([], ``(M,Oi,Os) sat Name (PR (Role Commander)) controls prop nogo ==>
  (M,Oi,Os) sat
  reps (Name (PR (Staff Alice))) (Name (PR (Role Commander)))
  (prop nogo) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Alice)) quoting
  Name (PR (Role Commander)) says prop nogo ==>
  (M,Oi,Os) sat prop nogo impf prop abort ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) speaks_for Name (PR (Role CA)) ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) says
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (PR (Role CA)) controls
  Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Bob)) quoting Name (PR (Role Operator)) says
  prop abort``),
REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN
PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Role CA)) speaks_for Name (PR (Role CA))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Role CA)) says
      Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role CA)) controls
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (PR (Role CA)) says
      Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
    (fn th2 => ASSUME_TAC(CONTROLS th1 th2)))) THEN

(* Derive Key Alice says Commander says nogo *)
PAT_ASSUM ``(M,Oi,Os) sat Name (Key (Staff Alice)) quoting
            Name (PR (Role Commander)) says prop nogo``
  (fn th => ASSUME_TAC (QUOTING_LR th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Staff Alice)) says
      Name (PR (Role Commander)) says (prop nogo)``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (PR (Staff Alice)) says Name (PR (Role Commander)) says
            (prop nogo)``
  (fn th => ASSUME_TAC (QUOTING_RL th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
           reps (Name (PR (Staff Alice))) (Name (PR (Role Commander)))(prop nogo)``
  (fn th1 =>
    (PAT_ASSUM ``(M,Oi,Os) sat
    Name (PR (Staff Alice)) quoting Name (PR (Role Commander)) says
    (prop nogo)``
      (fn th2 =>
        (PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role Commander)) controls (prop nogo)``
	  (fn th3 => ASSUME_TAC (REPS th1 th2 th3)))))) THEN


PAT_ASSUM ``(M,Oi,Os) sat (prop nogo)`` (fn th1 =>
  (PAT_ASSUM ``(M,Oi,Os) sat prop nogo impf prop abort``
    (fn th2 => ASSUME_TAC (ACL_MP th1 th2)))) THEN

ASM_REWRITE_TAC[]
)

val ApRuleStandDown_thm =
TAC_PROOF(
([], ``(M,Oi,Os) sat Name (PR (Role Operator)) controls prop abort ==>
  (M,Oi,Os) sat
  reps (Name (PR (Staff Bob))) (Name (PR (Role Operator)))
  (prop abort) ==>
  (M,Oi,Os) sat
  Name (Key (Staff Bob)) quoting
  Name (PR (Role Operator)) says prop abort ==>
  (M,Oi,Os) sat prop abort impf prop stand_down ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) speaks_for Name (PR (Role CA)) ==>
  (M,Oi,Os) sat
  Name (Key (Role CA)) says
  Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob)) ==>
  (M,Oi,Os) sat
  Name (PR (Role CA)) controls
  Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob)) ==>
  (M,Oi,Os) sat
  prop stand_down``),
REPEAT STRIP_TAC THEN
PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Role CA)) speaks_for Name (PR (Role CA))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Role CA)) says
      Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role CA)) controls
            Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (PR (Role CA)) says
      Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
    (fn th2 => ASSUME_TAC(CONTROLS th1 th2)))) THEN

(* Derive Key Bob says Operator says abort *)
PAT_ASSUM ``(M,Oi,Os) sat Name (Key (Staff Bob)) quoting
            Name (PR (Role Operator)) says prop abort``
  (fn th => ASSUME_TAC (QUOTING_LR th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (Key (Staff Bob)) speaks_for Name (PR (Staff Bob))``
  (fn th1 =>
    (PAT_ASSUM
    ``(M,Oi,Os) sat Name (Key (Staff Bob)) says
      Name (PR (Role Operator)) says (prop abort)``
    (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN

PAT_ASSUM ``(M,Oi,Os) sat
            Name (PR (Staff Bob)) says Name (PR (Role Operator)) says
            (prop abort)``
  (fn th => ASSUME_TAC (QUOTING_RL th)) THEN

PAT_ASSUM ``(M,Oi,Os) sat
           reps (Name (PR (Staff Bob))) (Name (PR (Role Operator)))(prop abort)``
  (fn th1 =>
    (PAT_ASSUM ``(M,Oi,Os) sat
    Name (PR (Staff Bob)) quoting Name (PR (Role Operator)) says
    (prop abort)``
      (fn th2 =>
        (PAT_ASSUM ``(M,Oi,Os) sat Name (PR (Role Operator)) controls (prop abort)``
	  (fn th3 => ASSUME_TAC (REPS th1 th2 th3)))))) THEN


PAT_ASSUM ``(M,Oi,Os) sat (prop abort)`` (fn th1 =>
  (PAT_ASSUM ``(M,Oi,Os) sat prop abort impf prop stand_down``
    (fn th2 => ASSUME_TAC (ACL_MP th1 th2)))) THEN

ASM_REWRITE_TAC[]
)

val _ = save_thm("OpRuleLaunch_thm", OpRuleLaunch_thm)
val _ = save_thm("ApRuleActive_thm", ApRuleActive_thm)
val _ = save_thm("OpRuleAbort_thm", OpRuleAbort_thm)
val _ = save_thm("ApRuleStandDown_thm", ApRuleStandDown_thm)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)