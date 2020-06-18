(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 21 March 2020                                                        *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

structure exercise9Script = struct

open HolKernel boolLib Parse bossLib

val _ = new_theory "exercise9"

(*Exercise 9.5.1 Proof *)
val absorptionRule = 
TAC_PROOF (
( [], ``!(p:bool)(q:bool).(p ==> q) ==> p ==> (p /\ q)``),
REPEAT STRIP_TAC THENL
[(ACCEPT_TAC (ASSUME ``p:bool``)),
(ACCEPT_TAC (MP (ASSUME ``p:bool==>q:bool``) (ASSUME ``p:bool``)))])

val _ = save_thm("absorptionRule",absorptionRule)

(* Exercise 9.5.2 *)

val constructiveDilemmaRule = 
TAC_PROOF (
( [], ``!(p:bool)(q:bool)(r:bool)(s:bool).(p==>q)/\(r==>s)==>(p\/r)==>(q\/s)``),
(REPEAT STRIP_TAC THENL
[(RES_TAC THEN (ACCEPT_TAC (DISJ1 (ASSUME ``q:bool``) ``s:bool``))),
(RES_TAC THEN (ACCEPT_TAC (DISJ2 ``q:bool`` (ASSUME ``s:bool``))))])
);

val _ = save_thm("constructiveDilemmaRule",constructiveDilemmaRule)

(* ex9_5_3.sml for Exercise 9.5.3 *)

(* Prove ! p q. (p ⇒ q) ⇒ p ⇒ p ∧ q *)
val absorptionRule2 = 
TAC_PROOF (
( [], ``!(p:bool)(q:bool).(p ==> q) ==> p ==> (p /\ q)``),
PROVE_TAC [])

(* ∀ p q r s. (p ⇒ q) ∧ (r ⇒ s) ⇒ p ∨ r ⇒ q ∨ s *)

val constructiveDilemmaRule2 = 
TAC_PROOF (
( [], ``!(p:bool)(q:bool)(r:bool)(s:bool).(p==>q) /\ (r==>s) ==> p ==> (p /\ q)``),
PROVE_TAC [])

val _ = save_thm("absorptionRule2",absorptionRule2)

val _ = save_thm("constructiveDilemmaRule2",constructiveDilemmaRule2)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)