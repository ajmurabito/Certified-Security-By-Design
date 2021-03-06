(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 26 January 2020                                                      *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

(* Exercise 4.6.4 *)

fun listSquares [] = []
  | listSquares (x::xs) = 
  let
    fun square y = y * y
  in
    square(x)::listSquares(xs)
  end;

(* Test cases as stated in the requirements *)
listSquares [];               (* Expect [] *)
listSquares [1,2,4,8];        (* Expect [1,4,16,64] *)
listSquares [5,12,7,~1];      (* Expect [25,144,49,1] *)