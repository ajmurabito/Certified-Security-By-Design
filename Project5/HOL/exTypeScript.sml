structure exTypeScript = struct

(* === Interactive mode: within a comment so it isn't executed by Holmake ===
map load ["listTheory","TypeBase","exTypeTheory"];
open listTheory TypeBase exTypeTheory arithmeticTheory
=== end Interactive mode ==================================================*)

open HolKernel boolLib Parse bossLib
open listTheory TypeBase arithmeticTheory

val _ = new_theory "exType";

(* === start here ===
val APP_def =
Define
 `(APP [] (l:'a list) = l) /\
 (APP (h::(l1:'a list)) (l2:'a list) = h::(APP l1 l2 ))`
=== end here === *)

val APP_def =
Define
 `(APP [] (l:'a list) = l) /\
 (APP (h::(l1:'a list)) (l2:'a list) = h::(APP l1 l2 ))`;

(* === start here ===
set_goal([] ,
``!(l1:'a list)(l2:'a list)(l3:'a list).
  (APP(APP l1 l2) l3) = (APP l1 (APP l2 l3))``) 
Induct_on `l1` THEN
ASM_REWRITE_TAC [APP_def]
=== end here === *)

val APP_ASSOC = 
TAC_PROOF (
([] ,``!(l1:'a list)(l2:'a list)(l3:'a list).
(APP(APP l1 l2) l3) = (APP l1 (APP l2 l3))``),
Induct_on `l1` THEN
ASM_REWRITE_TAC [APP_def])

val _ = save_thm("APP_ASSOC", APP_ASSOC)

(* Exercise 11_6_1 LENGTH_APP thm *)

(* === start here ===
set_goal(
([], ``!(l1:'a list)(l2:'a list). LENGTH (APP l1 l2) = LENGTH l1 + LENGTH l2``))
Induct_on `l1` THEN
STRIP_TAC THEN
ASM_REWRITE_TAC [APP_def, ADD_CLAUSES, LENGTH]
=== end here === *)

val LENGTH_APP =
TAC_PROOF (
([], ``!(l1:'a list)(l2:'a list). LENGTH (APP l1 l2) = LENGTH l1 + LENGTH l2``),
Induct_on `l1` THEN
STRIP_TAC THEN
ASM_REWRITE_TAC [APP_def, ADD_CLAUSES, LENGTH])

val _ = save_thm("LENGTH_APP", LENGTH_APP)

(* Exercise 11_6_2 Map_APP thm *)

(* === start here ===
val Map_def =
Define
 `(Map f [] = []) /\
 (Map f (h::(l1:'a list)) = (f h)::(Map f l1))`
 === end here === *)

val Map_def =
Define
 `(Map f [] = []) /\
 (Map f (h::(l1:'a list)) = (f h)::(Map f l1))`

(* === start here ===
 set_goal(
 ([], ``Map f (APP l1 l2) = APP (Map f l1) (Map f l2)``))
 Induct_on `l1` THEN
 ASM_REWRITE_TAC [App_def, Map_def]
 === end here === *)
 
val Map_APP =
TAC_PROOF (
([], ``Map f (APP l1 l2) = APP (Map f l1) (Map f l2)``),
Induct_on `l1` THEN
ASM_REWRITE_TAC [APP_def, Map_def])

val _ = save_thm("Map_APP", Map_APP)


val _ = export_theory ();
val _ = print_theory "-";

end
