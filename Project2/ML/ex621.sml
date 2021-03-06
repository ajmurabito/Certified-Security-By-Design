(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 25 January 2020                                                      *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

(* Exercise 6.2.1 *)
(* 1: Enter the HOL equivalent of P(x) *)
``P x ==> Q y``;

(* 2: Constrain x to HOL type :num and y to :bool *)
``P (x:num) ==> Q (y:bool)``;

(* 3: Enter the HOL equivalent of forall x y.P(x) ==> Q(y) *)
``!x y.P(x) ==> Q(y)``;

(* 4: Enter the HOL equivalent of \exists (x:num).R(x:'a) *)
``?(x:num).R(x:num)``;

(* 5: *)
``~!x.P(x)\/Q(x) = ?x.~P(x)/\~Q(x)``;

(* 6: All people are mortal, where P(x) means x is a person, *)
(*   and M(x) means x is mortal. *)
``!x.P(x) ==> M(x)``;

(* 7: Some people are funny. *)
``?x.Funny(x)``;

(* 4b: Enter the HOL equivalent of \exists (x:num).R(x:'a) *)
``?(x:num).R(x:'a)``;
