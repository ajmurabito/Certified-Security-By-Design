(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 25 January 2020                                                      *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

(* Function addPairsGreaterThan n list, given integer n, given a list of
pairs of integers list, returns a list where each elemetn sum of pair
in list where both elements are greater than *)

fun addPairsGreaterThan n list =
let
  val list1 = filter (fn (a,b) => (a > n) andalso (b > n)) list
in
  map (fn (a,b) => a + b) list1
end;

(* Test case as specified in the requirements *)
addPairsGreaterThan 0 [(0,1),(2,0),(2,3),(4,5)];   (* expect [5,9] *)
addPairsGreaterThan 2 [(0,1),(2,0),(2,3),(4,5)];   (* expect [9] *)
addPairsGreaterThan 4 [(0,1),(2,0),(2,3),(4,5)];   (* expect [] *)