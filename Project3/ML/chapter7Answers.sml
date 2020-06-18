(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 21 March 2020                                                        *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

(* Solution to Exercise 7_3_1  *)

fun andImp2Imp term_i =
  let
    val (p_and_q, r) = dest_imp term_i
    val (p, q)  = dest_conj p_and_q
  in
    mk_imp (p, mk_imp (q, r))
end;

andImp2Imp ``(p /\ q) ==> r``;

(* Exercise 7_3_2 *)
(* Turns terms of p ==> q ==> r to (p /\ q) ==> r *)

fun impImpAnd term_i =
let
  val (p, q_imp_r) = dest_imp term_i
  val (q, r) = dest_imp q_imp_r
in
  mk_imp (mk_conj (p, q), r)
end;

impImpAnd ``p ==> q ==> r``;
impImpAnd(andImp2Imp ``(p /\ q) ==> r``);
andImp2Imp(impImpAnd ``p ==> q ==> r``);


(Exercise 7_3_3  *)
(* Given ~?x.P(x) return !x.~P(x)

fun notExists term_i =
let
  val (x, F ) = dest_exists (dest_neg term_i)
in
  mk_forall (x, F )
end;

notExists ``~?z.Q z``;