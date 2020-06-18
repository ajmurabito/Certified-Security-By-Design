(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 25 January 2020                                                      *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

(* Exercise 5.3.4 * Defining a function with behavior identical to filter)

fun Filter B [] = []
  | Filter B (x::xs) = if B x then x::(Filter B xs) else (Filter B xs);


Filter (fn x => x < 5) [];		   (* Expect [] *)
filter (fn x => x < 5) [];

Filter (fn x => x < 5) [4,6];		   (* Expect [4] *)
filter (fn x => x < 5) [4,6];

Filter (fn x => x < 5) [1,2,4,8,16];	   (* Expect [1,2,4] *)
filter (fn x => x < 5) [1,2,4,8,16];

Filter (fn x => x < 5) [5,6,7,8];	   (* Expect [] *)
filter (fn x => x < 5) [5,6,7,8];

Filter (fn x => x = "cat") ["dog","bird"]; (* Expect [] *)
filter (fn x => x = "cat") ["dog","bird"];

Filter (fn x => x = "cat") ["cat","dog","cat"];	     (* Expect ["cat","cat"] *)
filter (fn x => x = "cat") ["cat","dog","cat"];
