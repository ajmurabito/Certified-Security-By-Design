(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: March 21                                                             *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)
(* Exercise 3_4_1 *)

(* Part A *)
val listA = [(0,"Alice"),(1,"Bob"),(3,"Carol"),(4,"Dan")]

(* Part B *)
val e1B::listB = listA;

(* Part C *)
val (e1C1,e1C2) = e1B;
val [e1C3,e1C4,e1C5] = listB;