(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 21 March 2020                                                        *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

structure exercise9Script = struct

open HolKernel boolLib Parse bossLib

val _ = new_theory "exercise10"

(* Exercise 10_4_1  
set_goal
([``!x:'a.P(x) ==> M(x)``,``(P:'a->bool)(s:'a)``],
``(M:'a->bool)(s:'a)``);
*)

(*  Proof Below   *)
val problem1_thm = 
TAC_PROOF (
([``!x:'a.P(x) ==> M(x)``,``(P:'a->bool)(s:'a)``], ``(M:'a->bool)(s:'a)``),
PAT_ASSUM ``!x.t`` (fn th => (ASSUME_TAC (SPEC ``s:'a`` th))) THEN
RES_TAC );

val _ = save_thm("problem1_thm",problem1_thm)

(* Solution to exercise 10.4.2    
set_goal([``p /\ q ==> r``,``r ==> s``,`` ~s``],``p ==> ~q``);

PAT_ASSUM ``r ==> s`` (fn th => ASSUME_TAC (IMP_ELIM th));
PAT_ASSUM ``~r:bool \/ s:bool`` (fn th => ASSUME_TAC (ONCE_REWRITE_RULE[DISJ_SYM] th));
PAT_ASSUM ``s:bool \/ ~r:bool`` (fn th => ASSUME_TAC (DISJ_IMP th));
RES_TAC;
PAT_ASSUM ``p:bool /\ q:bool ==> r:bool`` (fn th => ASSUME_TAC (ONCE_REWRITE_RULE[DISJ_SYM](IMP_ELIM th)));
PAT_ASSUM ``r:bool \/ ~(p /\ q)`` (fn th => ASSUME_TAC (DISJ_IMP th));
(* PAT_ASSUM ``~r ==> ~(p /\ q)`` (fn th => ASSUME_TAC (MP th (ASSUME ``~r``))) *);  
RES_TAC
let
  val demorgan = SPEC ``q:bool`` (SPEC ``p:bool`` DE_MORGAN_THM)
in
  PAT_ASSUM ``~(p /\ q)``(fn th => ASSUME_TAC (REWRITE_RULE [] (DISJ_IMP (EQ_MP (CONJUNCT1 demorgan) (ASSUME ``~(p /\ q)``)))))
end;
ASM_REWRITE_TAC [];
*)

(* Packed together in TAC_PROOF *)
val problem2_thm = 
TAC_PROOF (
([``p /\ q ==> r``,``r ==> s``,`` ~s``],``p ==> ~q``),
PAT_ASSUM ``r ==> s`` (fn th => ASSUME_TAC (IMP_ELIM th)) THEN
PAT_ASSUM ``~r:bool \/ s:bool`` (fn th => ASSUME_TAC (ONCE_REWRITE_RULE[DISJ_SYM] th)) THEN
PAT_ASSUM ``s:bool \/ ~r:bool`` (fn th => ASSUME_TAC (DISJ_IMP th)) THEN
RES_TAC THEN
PAT_ASSUM ``p:bool /\ q:bool ==> r:bool`` (fn th => ASSUME_TAC (ONCE_REWRITE_RULE[DISJ_SYM](IMP_ELIM th))) THEN
PAT_ASSUM ``r:bool \/ ~(p /\ q)`` (fn th => ASSUME_TAC (DISJ_IMP th)) THEN
RES_TAC THEN
(let
  val demorgan = SPEC ``q:bool`` (SPEC ``p:bool`` DE_MORGAN_THM)
in
  PAT_ASSUM ``~(p /\ q)``(fn th => ASSUME_TAC (REWRITE_RULE [] (DISJ_IMP (EQ_MP (CONJUNCT1 demorgan) (ASSUME ``~(p /\ q)``)))))
end) THEN
ASM_REWRITE_TAC []
);

val _ = save_thm("problem2_thm",problem2_thm)

(* Exercise 10_4_3  
set_goal([`` ~(p /\ q)``, `` ~p ==> r``,`` ~q ==> s``],``r \/ s ``);

(let
  val demorgan = SPEC ``q:bool`` (SPEC ``p:bool`` DE_MORGAN_THM)
in
  PAT_ASSUM ``~(p /\ q)`` (fn th => ASSUME_TAC ((EQ_MP (CONJUNCT1 demorgan) (ASSUME ``~(p /\ q)``))))
end);
PAT_ASSUM ``~p \/ ~q`` (fn th => ASSUME_TAC (REWRITE_RULE [] (DISJ_IMP th)));
PAT_ASSUM ``p ==> ~q`` (fn th => ASSUME_TAC (IMP_TRANS th (ASSUME ``~q ==> s``)));
PAT_ASSUM ``p ==> s`` (fn th => ASSUME_TAC (DISJ_IMP(ONCE_REWRITE_RULE[DISJ_SYM](IMP_ELIM th))));
PAT_ASSUM ``~s ==> ~p`` (fn th => ASSUME_TAC (IMP_TRANS th (ASSUME ``~p ==> r``)));
PAT_ASSUM ``~s ==> r`` (fn th => ASSUME_TAC (REWRITE_RULE [](IMP_ELIM th)));
ASM_REWRITE_TAC [DISJ_SYM];
*)

(* Bundled together using TAC_PROOF  *)
val problem3_thm = 
TAC_PROOF (
([`` ~(p /\ q)``, `` ~p ==> r``,`` ~q ==> s``],``r \/ s ``),
(let
  val demorgan = SPEC ``q:bool`` (SPEC ``p:bool`` DE_MORGAN_THM)
in
  PAT_ASSUM ``~(p /\ q)`` (fn th => ASSUME_TAC ((EQ_MP (CONJUNCT1 demorgan) (ASSUME ``~(p /\ q)``))))
end) THEN
PAT_ASSUM ``~p \/ ~q`` (fn th => ASSUME_TAC (REWRITE_RULE [] (DISJ_IMP th))) THEN
PAT_ASSUM ``p ==> ~q`` (fn th => ASSUME_TAC (IMP_TRANS th (ASSUME ``~q ==> s``))) THEN
PAT_ASSUM ``p ==> s`` (fn th => ASSUME_TAC (DISJ_IMP(ONCE_REWRITE_RULE[DISJ_SYM](IMP_ELIM th)))) THEN
PAT_ASSUM ``~s ==> ~p`` (fn th => ASSUME_TAC (IMP_TRANS th (ASSUME ``~p ==> r``))) THEN
PAT_ASSUM ``~s ==> r`` (fn th => ASSUME_TAC (REWRITE_RULE [](IMP_ELIM th))) THEN
ASM_REWRITE_TAC [DISJ_SYM]
)

val _ = save_thm("problem3_thm",problem3_thm)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)