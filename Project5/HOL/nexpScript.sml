(******************************************************************************)
(* Syntax and semantics of natural expressions                                *)
(* Author: Alfred Murabito                                                    *)
(* Date: 14 February 2020                                                     *)
(******************************************************************************)
structure nexpScript = struct
open HolKernel Parse boolLib bossLib;
open TypeBase boolTheory arithmeticTheory

(* ==== interactive mode ====
map load ["boolTheory","TypeBase","nexpTheory", "arithmeticTheory"];
open boolTheory TypeBase nexpTheory arithmeticTheory
 ==== end interactive mode ==== *)
 
val _ = new_theory "nexp";

val _ = Datatype
`nexp = Num num | Add nexp nexp | Sub nexp nexp | Mult nexp nexp`;

val nexpVal_def =
Define
`(nexpVal (Num num) = num) /\
 (nexpVal (Add n1 n2) = (nexpVal n1) + (nexpVal n2)) /\
 (nexpVal (Sub n1 n2) = (nexpVal n1) - (nexpVal n2)) /\
 (nexpVal (Mult n1 n2) = (nexpVal n1) * (nexpVal n2))`

(******************************************************************************)
(* Prove nexpVal (Add (Num 0) n) = nexpVal(n)                                 *)
(******************************************************************************)
(* ==== start here ====
set_goal([],``!(n:nexp).nexpVal(Add (Num 0) n) = nexpVal(n)``)
ASM_REWRITE_TAC[nexpVal_def, ADD]
 ==== end here ==== *)

val Add_0 =
TAC_PROOF (
([],``!(n:nexp).nexpVal(Add (Num 0) n) = nexpVal(n)``),
Induct_on`n` THEN
ASM_REWRITE_TAC[nexpVal_def, ADD]
)

val _ = save_thm("Add_0", Add_0)

(******************************************************************************)
(* Prove nexpVal (Add n1 n2) = nexpVal (Add n2 n1)                            *)
(******************************************************************************)
(* ==== start here ====
set_goal([],``!(n1:nexp)(n2:nexp).nexpVal(Add n1 n2) = nexpVal(Add n2 n1)``)
PROVE_TAC [nexpVal_def, ADD_SYM]
 ==== end here ==== *)

val Add_SYM =
TAC_PROOF (
([],``!(n1:nexp)(n2:nexp).nexpVal(Add n1 n2) = nexpVal(Add n2 n1)``),
PROVE_TAC [nexpVal_def, ADD_SYM]
)

val _ = save_thm("Add_SYM", Add_SYM)



(*******************************************************************************)
(*  Prove (nexpVal (Sub (Num 0) n) = 0) /\                                     *)
(*        (nexpVal (Sub n (Num 0)) = nexpVal n)                                *)
(*******************************************************************************)

(* ==== start here ====
set_goal([],``!(n:nexp).(nexpVal(Sub (Num 0) n) = 0) /\
                        (nexpVal(Sub n (Num 0)) = nexpVal n)``)
ASM_REWRITE_TAC[nexpVal_def, SUB_0]
 ==== end here ==== *)

val Sub_0 =
TAC_PROOF (
([],``!(n:nexp).(nexpVal(Sub (Num 0) n) = 0) /\
                (nexpVal(Sub n (Num 0)) = nexpVal n)``),
ASM_REWRITE_TAC[nexpVal_def, SUB_0]
)

val _ = save_thm("Sub_0", Sub_0)

(*******************************************************************************)
(*  Prove nexpVal (Mult n1 (Mult n2 n3)) =                                     *)
(*        nexpVal (Mult (Mult n1 n2) n3)                                       *)
(*******************************************************************************)

(* ==== start here ====
set_goal([],``!(n1:nexp)(n2:nexp)(n3:nexp).nexpVal(Mult n1 (Mult n2 n3)) =
                                           nexpVal(Mult (Mult n1 n2) n3)``)
ASM_REWRITE_TAC [nexpVal_def, MULT_ASSOC]
 ==== end here ==== *)

val Mult_ASSOC =
TAC_PROOF (
([],``!(n1:nexp)(n2:nexp)(n3:nexp).nexpVal(Mult n1 (Mult n2 n3)) =
                                           nexpVal(Mult (Mult n1 n2) n3)``),
ASM_REWRITE_TAC [nexpVal_def, MULT_ASSOC]
)

val _ = save_thm("Mult_ASSOC", Mult_ASSOC)

val _ = export_theory();

end