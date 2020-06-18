(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 21 March 2020                                                        *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

structure chapter8Script = struct

open HolKernel boolLib Parse bossLib

val _ = new_theory "chapter8"

(* Excercise 8_4_1 *)
val problem1Thm =
let
  val p_term = ``p:bool``
  val q_term = ``q:bool``
  val r_term = ``r:bool``
  val p_imp_q = mk_imp (p_term, q_term)
  val q_imp_r = mk_imp (q_term, r_term)
  val thm1 = ASSUME p_term
  val thm2 = ASSUME p_imp_q
  val thm3 = MP (ASSUME p_imp_q) (ASSUME p_term)
  val thm4 = MP (ASSUME q_imp_r) thm3
in
  DISCH p_term (DISCH p_imp_q (DISCH q_imp_r thm4))
end;

val _ = save_thm("problem1Thm",problem1Thm)

(* Exercise 8_4_2 *)

(* Prove p /\ q <=> q /\ p *)
val conjSymThm =
let
  val p_term = ``p:bool``
  val q_term = ``q:bool``
  val p_and_q = mk_conj (p_term, q_term)
  val q_and_p = mk_conj (q_term, p_term)

  (* Prove -| p /\ q ==> q /\ p *)
  val thm1 = ASSUME p_and_q
  val thm2 = CONJUNCT1 thm1
  val thm3 = CONJUNCT2 thm1
  val thm4 = CONJ thm3 thm2
  val thm5 = DISCH p_and_q thm4

  (* Prove -| q /\ p ==> p /\ q *)
  val thm6 = ASSUME q_and_p
  val thm7 = CONJUNCT1 thm6
  val thm8 = CONJUNCT2 thm6
  val thm9 = CONJ thm8 thm7
  val thm10 = DISCH q_and_p thm9


in
  IMP_ANTISYM_RULE thm10 thm5
end;

val _ = save_thm("conjSymThm",conjSymThm)

(* Exercise 8_4_3 *)

(* Prove p /\ q <=> q /\ p *)
val conjSymThmAll =
let
  val p_term = ``p:bool``
  val q_term = ``q:bool``
  val p_and_q = mk_conj (p_term, q_term)
  val q_and_p = mk_conj (q_term, p_term)

  (* Prove -| p /\ q ==> q /\ p *)
  val thm1 = ASSUME p_and_q
  val thm2 = CONJUNCT1 thm1
  val thm3 = CONJUNCT2 thm1
  val thm4 = CONJ thm3 thm2
  val thm5 = DISCH p_and_q thm4

  (* Prove -| q /\ p ==> p /\ q *)
  val thm6 = ASSUME q_and_p
  val thm7 = CONJUNCT1 thm6
  val thm8 = CONJUNCT2 thm6
  val thm9 = CONJ thm8 thm7
  val thm10 = DISCH q_and_p thm9
  val thm11 = IMP_ANTISYM_RULE thm10 thm5

in
  GENL [p_term, q_term] thm11
end;

val _ = save_thm("conjSymThmAll",conjSymThmAll)

val _ = export_theory ()
val _ = print_theory "-"

end (* struct *)