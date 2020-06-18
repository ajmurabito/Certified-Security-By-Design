(******************************************************************************)
(*  Exam2 Theory: Access Control Mechanisms                                   *)
(*  Author: Alfred Murabito                                                   *)
(*  Date: 2/29/2020                                                           *)
(******************************************************************************)

structure exam2Script = struct

(* only necessary when working interactively
app load ["acl_infRules","aclrulesTheory","aclDrulesTheory","exam2Theory"]
open acl_infRules aclrulesTheory aclDrulesTheory exam2Theory
*)

open HolKernel boolLib Parse bossLib
open acl_infRules aclrulesTheory aclDrulesTheory

val _ = new_theory "exam2"

val _ =
Datatype
`roles = KennedyCenter`

val _ =
Datatype
`people = Mary`

val _ =
Datatype
`passPrinc = Users exam2$people`

val _ =
Datatype
`principals = PR passPrinc | Pass passPrinc | Role exam2$roles`

val _ =
Datatype
`accounts = AC exam2$people`

(* Question 2 Datatypes *)
val _ =
Datatype
`people2 = Don`

val _ =
Datatype
`roles2 = BankOfRiches`

val _ =
Datatype
`pinIdPrinc = Client exam2$people2`

val _ =
Datatype
`RichesPrincipals = PR2 pinIdPrinc | PIN pinIdPrinc | ID pinIdPrinc | Role2 roles2 | BN num`

val _ =
Datatype
`richAccts = RAC pinIdPrinc`

(* Problem 1 Ticket Assumptions
``(Name (PR (Users Mary))) says (prop (AC Mary)):(accounts,principals,'d,'e)Form``

``(Name (Role KennedyCenter)) controls ((Name (PR (Users Mary))) controls (prop (AC Mary)))
:(accounts,principals,'d,'e)Form``

``((Name (Pass (Users Mary))) speaks_for (Name (Role KennedyCenter))):(accounts,principals,'d,'e)Form``

``(Name (Pass (Users Mary))) says (prop (AC Mary)):(accounts,principals,'d,'e)Form``
*)


val a1 = ``(Name (PR (Users Mary))) says (prop (AC Mary)):(accounts,principals,'d,'e)Form``
val a2 = ``(Name (Role KennedyCenter)) controls ((Name (PR (Users Mary))) controls (prop (AC Mary)))
	   	   :(accounts,principals,'d,'e)Form``
val a3 = ``((Name (Pass (Users Mary))) speaks_for (Name (Role KennedyCenter))):(accounts,principals,'d,'e)Form``
val a4 = ``(Name (Pass (Users Mary))) says ((Name (PR (Users Mary))) controls (prop (AC Mary))):(accounts,principals,'d,'e)Form``

val [a1_thm,a2_thm,a3_thm,a4_thm] = map ACL_ASSUM [a1,a2,a3,a4]

val thm1 = SPEAKS_FOR a3_thm a4_thm
val thm2 = CONTROLS a2_thm thm1
val exam2_1_thm = CONTROLS thm2 a1_thm

val _ = save_thm("exam2_1_thm", exam2_1_thm)


val b1 = ``(Name (Role2 BankOfRiches)) controls ((Name(PR2(Client Don))) meet
	   	 		 	   				  		    (Name(ID(Client Don))) meet
	   	 		 	   				  		    (Name(BN 4789111238734609))
											    controls (prop(RAC(Client Don))))
												:(richAccts,RichesPrincipals,'d,'e)Form``;

val b2 = ``((Name(PIN(Client Don))) speaks_for (Name(Role2 BankOfRiches))):(richAccts,RichesPrincipals,'d,'e)Form``;

val b3 = ``(Name(PIN(Client Don))) says ((Name(PR2(Client Don))) meet
	   	 		 	   				     (Name(ID(Client Don))) meet
	   	 		 	   				     (Name(BN 4789111238734609))
									     controls (prop(RAC(Client Don))))
										 :(richAccts,RichesPrincipals,'d,'e)Form``;

val b4 = ``(Name(PR2(Client Don)) meet Name(ID(Client Don)) meet Name(BN 4789111238734609)) 
	   	 says (prop(RAC(Client Don))):(richAccts,RichesPrincipals,'d,'e)Form``;

val [b1_thm,b2_thm,b3_thm,b4_thm] = map ACL_ASSUM [b1,b2,b3,b4];

val thm1_2 = SPEAKS_FOR b2_thm b3_thm;
val thm2_2 = CONTROLS b1_thm thm1_2;
val exam2_2_thm = CONTROLS thm2_2 b4_thm;

val _ = save_thm("exam2_2_thm", exam2_2_thm)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)