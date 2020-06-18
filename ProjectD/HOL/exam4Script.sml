(******************************************************************************)
(*  Exam4 Theory: Access Control Mechanisms                                   *)
(*  Author: Alfred Murabito                                                   *)
(*  Date: 3/26/2020                                                           *)
(******************************************************************************)

structure exam4Script = struct

(* only necessary when working interactively
app load ["acl_infRules","aclrulesTheory","aclDrulesTheory","exam4Theory"]
open acl_infRules aclrulesTheory aclDrulesTheory exam4Theory
*)

open HolKernel boolLib Parse bossLib
open acl_infRules aclrulesTheory aclDrulesTheory

val _ = new_theory "exam4"

(* Theory Definitions *)
val _ =
Datatype
`servers = AS | TGS | FS`

val _ =
Datatype
`people = Ursala`

val _ =
Datatype
`keys = KTGS | KFS | KU | KUTGS | KUFS`

val _ =
Datatype
`princs = PR servers | User people | Key keys`

val _ =
Datatype
`access = print | read | write`

val _ =
Datatype
`serviceKey = SERV servers | K keys`

val _ =
Datatype
`props = USE serviceKey | PK people keys | AC access`  


val forma1 = ``Name (User Ursala) says prop (USE (SERV TGS)):(props,princs,'d,'e)Form``
val forma2 = ``Name (User Ursala) controls prop (USE (SERV TGS)):(props,princs,'d,'e)Form``
val forma3 = ``prop (USE (SERV TGS)) impf (Name (Key KU) says prop (USE (K KUTGS))
			  		 	  			   andf Name (Key KTGS) says prop (PK Ursala KUTGS)):(props,princs,'d,'e)Form``
val [forma1_thm,forma2_thm,forma3_thm] = map ACL_ASSUM [forma1,forma2,forma3]

val forma4_thm = CONTROLS forma2_thm forma1_thm
val forma_thm = ACL_MP forma4_thm forma3_thm
val init_auth_thm = DISCH_ALL forma_thm

val _ = save_thm("init_auth_thm",init_auth_thm)


val formb1 = ``(Name (Key KU) says prop (USE (K KUTGS)) andf
               Name (Key KTGS) says prop (PK Ursala KUTGS)):(props,princs,'d,'e)Form``
			   
val formb2 = ``Name (PR AS) controls prop (USE (K KUTGS)):(props,princs,'d,'e)Form``
val formb3 = ``(Name (Key KU) speaks_for Name (PR AS)):(props,princs,'d,'e)Form``
val formb4 = ``prop (USE (K KUTGS)) impf Name (Key KUTGS) says prop (USE (SERV FS)):(props,princs,'d,'e)Form``

val [formb1_thm,formb2_thm,formb3_thm,formb4_thm] = map ACL_ASSUM[formb1,formb2,formb3,formb4]
val formb5_thm = ACL_SIMP1 formb1_thm
val formb6_thm = ACL_SIMP2 formb1_thm
val formb7_thm = SPEAKS_FOR formb3_thm formb5_thm
val formb8_thm = CONTROLS formb2_thm formb7_thm
val formb9_thm = ACL_MP formb8_thm formb4_thm
val formb_thm = ACL_CONJ formb9_thm formb6_thm
val session_key_receipt_thm = DISCH_ALL formb_thm

val _ = save_thm("session_key_receipt_thm",session_key_receipt_thm)


val formc1 = ``Name (Key KUTGS) says prop (USE (SERV FS)) andf
               Name (Key KTGS) says prop (PK Ursala KUTGS):(props,princs,'d,'e)Form``

val formc2 = ``(Name (PR AS)) controls (prop (PK Ursala KUTGS)):(props,princs,'d,'e)Form``
val formc3 = ``(Name (Key KTGS) speaks_for (Name (PR AS))):(props,princs,'d,'e)Form``

val formc4 = ``prop (PK Ursala KUTGS) impf (Name (Key KFS) says ((Name (Key KUFS)) speaks_for (Name (User Ursala)))):(props,princs,'d,'e)Form``
val formc5 = ``prop (PK Ursala KUTGS) impf (Name (Key KUFS) says prop (AC read)):(props,princs,'d,'e)Form``

val [formc1_thm,formc2_thm,formc3_thm,formc4_thm,formc5_thm] = map ACL_ASSUM[formc1,formc2,formc3,formc4,formc5]

val formc6_thm = ACL_SIMP1 formc1_thm
val formc7_thm = ACL_SIMP2 formc1_thm
val formc8_thm = SPEAKS_FOR formc3_thm formc7_thm
val formc9_thm = CONTROLS formc2_thm formc8_thm
val formc10_thm = ACL_MP formc9_thm formc4_thm
val formc11_thm = ACL_MP formc9_thm formc5_thm
val formc_thm = ACL_CONJ formc10_thm formc11_thm
val request_for_services_thm = DISCH_ALL formc_thm

val _ = save_thm("request_for_services_thm",request_for_services_thm)


val formd1 = ``(Name (Key KFS) says (Name (Key KUFS) speaks_for Name (User Ursala))) andf
		   	   (Name (Key KUFS) says prop (AC print)):(props,princs,'d,'e)Form``
val formd2 = ``(Name (Key KFS) speaks_for Name (PR TGS)):(props,princs,'d,'e)Form``
val formd3 = ``(Name (PR TGS) controls (Name (Key KUFS) speaks_for Name (User Ursala))):(props,princs,'d,'e)Form``
val formd4 = ``(Name (User Ursala) controls prop(AC print)):(props,princs,'d,'e)Form``

val [formd1_thm,formd2_thm,formd3_thm,formd4_thm] = map ACL_ASSUM[formd1,formd2,formd3,formd4]
val formd5_thm = ACL_SIMP1 formd1_thm
val formd6_thm = ACL_SIMP2 formd1_thm
val formd7_thm = SPEAKS_FOR formd2_thm formd5_thm
val formd8_thm = CONTROLS formd3_thm formd7_thm
val formd9_thm = SPEAKS_FOR formd8_thm formd6_thm
val formd_thm = CONTROLS formd4_thm formd9_thm
val service_request_thm = DISCH_ALL formd_thm

val _ = save_thm("service_request_thm",service_request_thm)

val _ = print_theory "-";

val _ = export_theory();

end 