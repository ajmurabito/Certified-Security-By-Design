(******************************************************************************)
(* Author: Alfred Murabito                                                    *)
(* Date: 25 January 2020                                                      *)
(* email: acmurabi@syr.edu                                                    *)
(******************************************************************************)

(* Exercise 4.6.3 *)

(* function takes 3-tuple integer input and outputs the sum *)
val funa1 = fn (x, y, z) => x + y + z;
fun funa2 (x, y, z) = x + y + z;

funa1 (1,3,4);             (* Expect 8 *)
funa2 (1,3,4);
funa1 (~1,0,1);            (* Expect 0 *)
funa2 (~1,0,1);
funa1 (489,2,34);          (* Expect 525 *)
funa2 (489,2,34);

(* function takes two integer input and returns x < y *)
val funb1 = (fn x => (fn y => x < y)); 
fun funb2 x y = x < y;

funb1 1 2;                 (* Expect true *)
funb2 1 2;
funb1 ~1 0;                (* Expect true *)
funb2 ~1 0;
funb1 ~3 ~44;              (* Expect false *)
funb2 ~3 ~44;


(* function takes two strings and concatenates them *)
val func1 = fn s1 => (fn s2 => s1 ^ s2);
fun func2 s1 s2 = s1 ^ s2;

func1 "hello" " world";      (* Expect "hello world" *)
func2 "hello" " world";
func1 "" "asdf";            (* Expect "asdf" *)
func2 "" "asdf";

(* Function that takes two lists list1 and list2 and appends them *)
val fund1 = fn list1 => (fn list2 => list1 @ list2);
fun fund2 list1 list2 = list1 @ list2;

fund1 [1,2,3] [4,5];       (* Expect [1,2,3,4,5] *)
fund2 [1,2,3] [4,5];
fund1 [] [1,2,3];          (* Expect [1,2,3] *)
fund2 [] [1,2,3];
fund1 ["a","b","c"] [];          (* Expect ["a","b","c"] *)
fund2 ["a","b","c"] [];          (* Expect ["a","b","c"] *)
fund1 [true, false] [false, false, false];  (* Expect [true, false, false, false] *)
fund2 [true, false] [false, false, false];  (* Expect [true, false, false, false] *)

(* Function that returns larger of a pair of values *)
val fune1 = fn (x,y) => if x > y then x else y;
fun fune2 (x,y) = if x > y then x else y;

fune1 (34, 55);	                 (* Expect 55 *)
fune2 (34, 55);
fune1 (~11, 478);	         (* Expect 478 *)
fune2 (~11, 478);
fune1 (0, 0);                    (* Expect 0 *)
fune2 (0, 0); 


