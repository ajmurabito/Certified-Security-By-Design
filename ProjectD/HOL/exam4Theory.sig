signature exam4Theory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val access_BIJ : thm
    val access_CASE : thm
    val access_TY_DEF : thm
    val access_size_def : thm
    val keys_BIJ : thm
    val keys_CASE : thm
    val keys_TY_DEF : thm
    val keys_size_def : thm
    val people_BIJ : thm
    val people_CASE : thm
    val people_TY_DEF : thm
    val people_size_def : thm
    val princs_TY_DEF : thm
    val princs_case_def : thm
    val princs_size_def : thm
    val props_TY_DEF : thm
    val props_case_def : thm
    val props_size_def : thm
    val servers_BIJ : thm
    val servers_CASE : thm
    val servers_TY_DEF : thm
    val servers_size_def : thm
    val serviceKey_TY_DEF : thm
    val serviceKey_case_def : thm
    val serviceKey_size_def : thm

  (*  Theorems  *)
    val access2num_11 : thm
    val access2num_ONTO : thm
    val access2num_num2access : thm
    val access2num_thm : thm
    val access_Axiom : thm
    val access_EQ_access : thm
    val access_case_cong : thm
    val access_case_def : thm
    val access_distinct : thm
    val access_induction : thm
    val access_nchotomy : thm
    val datatype_access : thm
    val datatype_keys : thm
    val datatype_people : thm
    val datatype_princs : thm
    val datatype_props : thm
    val datatype_servers : thm
    val datatype_serviceKey : thm
    val init_auth_thm : thm
    val keys2num_11 : thm
    val keys2num_ONTO : thm
    val keys2num_num2keys : thm
    val keys2num_thm : thm
    val keys_Axiom : thm
    val keys_EQ_keys : thm
    val keys_case_cong : thm
    val keys_case_def : thm
    val keys_distinct : thm
    val keys_induction : thm
    val keys_nchotomy : thm
    val num2access_11 : thm
    val num2access_ONTO : thm
    val num2access_access2num : thm
    val num2access_thm : thm
    val num2keys_11 : thm
    val num2keys_ONTO : thm
    val num2keys_keys2num : thm
    val num2keys_thm : thm
    val num2people_11 : thm
    val num2people_ONTO : thm
    val num2people_people2num : thm
    val num2people_thm : thm
    val num2servers_11 : thm
    val num2servers_ONTO : thm
    val num2servers_servers2num : thm
    val num2servers_thm : thm
    val people2num_11 : thm
    val people2num_ONTO : thm
    val people2num_num2people : thm
    val people2num_thm : thm
    val people_Axiom : thm
    val people_EQ_people : thm
    val people_case_cong : thm
    val people_case_def : thm
    val people_induction : thm
    val people_nchotomy : thm
    val princs_11 : thm
    val princs_Axiom : thm
    val princs_case_cong : thm
    val princs_distinct : thm
    val princs_induction : thm
    val princs_nchotomy : thm
    val props_11 : thm
    val props_Axiom : thm
    val props_case_cong : thm
    val props_distinct : thm
    val props_induction : thm
    val props_nchotomy : thm
    val request_for_services_thm : thm
    val servers2num_11 : thm
    val servers2num_ONTO : thm
    val servers2num_num2servers : thm
    val servers2num_thm : thm
    val servers_Axiom : thm
    val servers_EQ_servers : thm
    val servers_case_cong : thm
    val servers_case_def : thm
    val servers_distinct : thm
    val servers_induction : thm
    val servers_nchotomy : thm
    val serviceKey_11 : thm
    val serviceKey_Axiom : thm
    val serviceKey_case_cong : thm
    val serviceKey_distinct : thm
    val serviceKey_induction : thm
    val serviceKey_nchotomy : thm
    val service_request_thm : thm
    val session_key_receipt_thm : thm

  val exam4_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclDrules] Parent theory of "exam4"

   [access_BIJ]  Definition

      |- (∀a. num2access (access2num a) = a) ∧
         ∀r. (λn. n < 3) r ⇔ (access2num (num2access r) = r)

   [access_CASE]  Definition

      |- ∀x v0 v1 v2.
           (case x of print => v0 | read => v1 | write => v2) =
           (λm. if m < 1 then v0 else if m = 1 then v1 else v2)
             (access2num x)

   [access_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 3) rep

   [access_size_def]  Definition

      |- ∀x. access_size x = 0

   [keys_BIJ]  Definition

      |- (∀a. num2keys (keys2num a) = a) ∧
         ∀r. (λn. n < 5) r ⇔ (keys2num (num2keys r) = r)

   [keys_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4.
           (case x of
              KTGS => v0
            | KFS => v1
            | KU => v2
            | KUTGS => v3
            | KUFS => v4) =
           (λm.
              if m < 2 then if m = 0 then v0 else v1
              else if m < 3 then v2
              else if m = 3 then v3
              else v4) (keys2num x)

   [keys_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 5) rep

   [keys_size_def]  Definition

      |- ∀x. keys_size x = 0

   [people_BIJ]  Definition

      |- (∀a. num2people (people2num a) = a) ∧
         ∀r. (λn. n < 1) r ⇔ (people2num (num2people r) = r)

   [people_CASE]  Definition

      |- ∀x v0. (case x of Ursala => v0) = (λm. v0) (people2num x)

   [people_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 1) rep

   [people_size_def]  Definition

      |- ∀x. people_size x = 0

   [princs_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'princs' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (ARB,a,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0)) (ARB,ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'princs' a0) ⇒
                  'princs' a0) rep

   [princs_case_def]  Definition

      |- (∀a f f1 f2. princs_CASE (PR a) f f1 f2 = f a) ∧
         (∀a f f1 f2. princs_CASE (User a) f f1 f2 = f1 a) ∧
         ∀a f f1 f2. princs_CASE (Key a) f f1 f2 = f2 a

   [princs_size_def]  Definition

      |- (∀a. princs_size (PR a) = 1 + servers_size a) ∧
         (∀a. princs_size (User a) = 1 + people_size a) ∧
         ∀a. princs_size (Key a) = 1 + keys_size a

   [props_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'props' .
                  (∀a0'.
                     (∃a.
                        a0' =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR (SUC 0) (ARB,a0,a1,ARB)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a.
                        a0' =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0)) (ARB,ARB,ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'props' a0') ⇒
                  'props' a0') rep

   [props_case_def]  Definition

      |- (∀a f f1 f2. props_CASE (USE a) f f1 f2 = f a) ∧
         (∀a0 a1 f f1 f2. props_CASE (PK a0 a1) f f1 f2 = f1 a0 a1) ∧
         ∀a f f1 f2. props_CASE (AC a) f f1 f2 = f2 a

   [props_size_def]  Definition

      |- (∀a. props_size (USE a) = 1 + serviceKey_size a) ∧
         (∀a0 a1.
            props_size (PK a0 a1) = 1 + (people_size a0 + keys_size a1)) ∧
         ∀a. props_size (AC a) = 1 + access_size a

   [servers_BIJ]  Definition

      |- (∀a. num2servers (servers2num a) = a) ∧
         ∀r. (λn. n < 3) r ⇔ (servers2num (num2servers r) = r)

   [servers_CASE]  Definition

      |- ∀x v0 v1 v2.
           (case x of AS => v0 | TGS => v1 | FS => v2) =
           (λm. if m < 1 then v0 else if m = 1 then v1 else v2)
             (servers2num x)

   [servers_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 3) rep

   [servers_size_def]  Definition

      |- ∀x. servers_size x = 0

   [serviceKey_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'serviceKey' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB) (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'serviceKey' a0) ⇒
                  'serviceKey' a0) rep

   [serviceKey_case_def]  Definition

      |- (∀a f f1. serviceKey_CASE (SERV a) f f1 = f a) ∧
         ∀a f f1. serviceKey_CASE (K a) f f1 = f1 a

   [serviceKey_size_def]  Definition

      |- (∀a. serviceKey_size (SERV a) = 1 + servers_size a) ∧
         ∀a. serviceKey_size (K a) = 1 + keys_size a

   [access2num_11]  Theorem

      |- ∀a a'. (access2num a = access2num a') ⇔ (a = a')

   [access2num_ONTO]  Theorem

      |- ∀r. r < 3 ⇔ ∃a. r = access2num a

   [access2num_num2access]  Theorem

      |- ∀r. r < 3 ⇔ (access2num (num2access r) = r)

   [access2num_thm]  Theorem

      |- (access2num print = 0) ∧ (access2num read = 1) ∧
         (access2num write = 2)

   [access_Axiom]  Theorem

      |- ∀x0 x1 x2. ∃f. (f print = x0) ∧ (f read = x1) ∧ (f write = x2)

   [access_EQ_access]  Theorem

      |- ∀a a'. (a = a') ⇔ (access2num a = access2num a')

   [access_case_cong]  Theorem

      |- ∀M M' v0 v1 v2.
           (M = M') ∧ ((M' = print) ⇒ (v0 = v0')) ∧
           ((M' = read) ⇒ (v1 = v1')) ∧ ((M' = write) ⇒ (v2 = v2')) ⇒
           ((case M of print => v0 | read => v1 | write => v2) =
            case M' of print => v0' | read => v1' | write => v2')

   [access_case_def]  Theorem

      |- (∀v0 v1 v2.
            (case print of print => v0 | read => v1 | write => v2) = v0) ∧
         (∀v0 v1 v2.
            (case read of print => v0 | read => v1 | write => v2) = v1) ∧
         ∀v0 v1 v2.
           (case write of print => v0 | read => v1 | write => v2) = v2

   [access_distinct]  Theorem

      |- print ≠ read ∧ print ≠ write ∧ read ≠ write

   [access_induction]  Theorem

      |- ∀P. P print ∧ P read ∧ P write ⇒ ∀a. P a

   [access_nchotomy]  Theorem

      |- ∀a. (a = print) ∨ (a = read) ∨ (a = write)

   [datatype_access]  Theorem

      |- DATATYPE (access print read write)

   [datatype_keys]  Theorem

      |- DATATYPE (keys KTGS KFS KU KUTGS KUFS)

   [datatype_people]  Theorem

      |- DATATYPE (people Ursala)

   [datatype_princs]  Theorem

      |- DATATYPE (princs PR User Key)

   [datatype_props]  Theorem

      |- DATATYPE (props USE PK AC)

   [datatype_servers]  Theorem

      |- DATATYPE (servers AS TGS FS)

   [datatype_serviceKey]  Theorem

      |- DATATYPE (serviceKey SERV K)

   [init_auth_thm]  Theorem

      |- (M,Oi,Os) sat Name (User Ursala) says prop (USE (SERV TGS)) ⇒
         (M,Oi,Os) sat
         prop (USE (SERV TGS)) impf
         Name (Key KU) says prop (USE (K KUTGS)) andf
         Name (Key KTGS) says prop (PK Ursala KUTGS) ⇒
         (M,Oi,Os) sat Name (User Ursala) controls prop (USE (SERV TGS)) ⇒
         (M,Oi,Os) sat
         Name (Key KU) says prop (USE (K KUTGS)) andf
         Name (Key KTGS) says prop (PK Ursala KUTGS)

   [keys2num_11]  Theorem

      |- ∀a a'. (keys2num a = keys2num a') ⇔ (a = a')

   [keys2num_ONTO]  Theorem

      |- ∀r. r < 5 ⇔ ∃a. r = keys2num a

   [keys2num_num2keys]  Theorem

      |- ∀r. r < 5 ⇔ (keys2num (num2keys r) = r)

   [keys2num_thm]  Theorem

      |- (keys2num KTGS = 0) ∧ (keys2num KFS = 1) ∧ (keys2num KU = 2) ∧
         (keys2num KUTGS = 3) ∧ (keys2num KUFS = 4)

   [keys_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4.
           ∃f.
             (f KTGS = x0) ∧ (f KFS = x1) ∧ (f KU = x2) ∧ (f KUTGS = x3) ∧
             (f KUFS = x4)

   [keys_EQ_keys]  Theorem

      |- ∀a a'. (a = a') ⇔ (keys2num a = keys2num a')

   [keys_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4.
           (M = M') ∧ ((M' = KTGS) ⇒ (v0 = v0')) ∧
           ((M' = KFS) ⇒ (v1 = v1')) ∧ ((M' = KU) ⇒ (v2 = v2')) ∧
           ((M' = KUTGS) ⇒ (v3 = v3')) ∧ ((M' = KUFS) ⇒ (v4 = v4')) ⇒
           ((case M of
               KTGS => v0
             | KFS => v1
             | KU => v2
             | KUTGS => v3
             | KUFS => v4) =
            case M' of
              KTGS => v0'
            | KFS => v1'
            | KU => v2'
            | KUTGS => v3'
            | KUFS => v4')

   [keys_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4.
            (case KTGS of
               KTGS => v0
             | KFS => v1
             | KU => v2
             | KUTGS => v3
             | KUFS => v4) =
            v0) ∧
         (∀v0 v1 v2 v3 v4.
            (case KFS of
               KTGS => v0
             | KFS => v1
             | KU => v2
             | KUTGS => v3
             | KUFS => v4) =
            v1) ∧
         (∀v0 v1 v2 v3 v4.
            (case KU of
               KTGS => v0
             | KFS => v1
             | KU => v2
             | KUTGS => v3
             | KUFS => v4) =
            v2) ∧
         (∀v0 v1 v2 v3 v4.
            (case KUTGS of
               KTGS => v0
             | KFS => v1
             | KU => v2
             | KUTGS => v3
             | KUFS => v4) =
            v3) ∧
         ∀v0 v1 v2 v3 v4.
           (case KUFS of
              KTGS => v0
            | KFS => v1
            | KU => v2
            | KUTGS => v3
            | KUFS => v4) =
           v4

   [keys_distinct]  Theorem

      |- KTGS ≠ KFS ∧ KTGS ≠ KU ∧ KTGS ≠ KUTGS ∧ KTGS ≠ KUFS ∧ KFS ≠ KU ∧
         KFS ≠ KUTGS ∧ KFS ≠ KUFS ∧ KU ≠ KUTGS ∧ KU ≠ KUFS ∧ KUTGS ≠ KUFS

   [keys_induction]  Theorem

      |- ∀P. P KFS ∧ P KTGS ∧ P KU ∧ P KUFS ∧ P KUTGS ⇒ ∀a. P a

   [keys_nchotomy]  Theorem

      |- ∀a. (a = KTGS) ∨ (a = KFS) ∨ (a = KU) ∨ (a = KUTGS) ∨ (a = KUFS)

   [num2access_11]  Theorem

      |- ∀r r'.
           r < 3 ⇒ r' < 3 ⇒ ((num2access r = num2access r') ⇔ (r = r'))

   [num2access_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2access r) ∧ r < 3

   [num2access_access2num]  Theorem

      |- ∀a. num2access (access2num a) = a

   [num2access_thm]  Theorem

      |- (num2access 0 = print) ∧ (num2access 1 = read) ∧
         (num2access 2 = write)

   [num2keys_11]  Theorem

      |- ∀r r'. r < 5 ⇒ r' < 5 ⇒ ((num2keys r = num2keys r') ⇔ (r = r'))

   [num2keys_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2keys r) ∧ r < 5

   [num2keys_keys2num]  Theorem

      |- ∀a. num2keys (keys2num a) = a

   [num2keys_thm]  Theorem

      |- (num2keys 0 = KTGS) ∧ (num2keys 1 = KFS) ∧ (num2keys 2 = KU) ∧
         (num2keys 3 = KUTGS) ∧ (num2keys 4 = KUFS)

   [num2people_11]  Theorem

      |- ∀r r'.
           r < 1 ⇒ r' < 1 ⇒ ((num2people r = num2people r') ⇔ (r = r'))

   [num2people_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2people r) ∧ r < 1

   [num2people_people2num]  Theorem

      |- ∀a. num2people (people2num a) = a

   [num2people_thm]  Theorem

      |- num2people 0 = Ursala

   [num2servers_11]  Theorem

      |- ∀r r'.
           r < 3 ⇒ r' < 3 ⇒ ((num2servers r = num2servers r') ⇔ (r = r'))

   [num2servers_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2servers r) ∧ r < 3

   [num2servers_servers2num]  Theorem

      |- ∀a. num2servers (servers2num a) = a

   [num2servers_thm]  Theorem

      |- (num2servers 0 = AS) ∧ (num2servers 1 = TGS) ∧
         (num2servers 2 = FS)

   [people2num_11]  Theorem

      |- ∀a a'. (people2num a = people2num a') ⇔ (a = a')

   [people2num_ONTO]  Theorem

      |- ∀r. r < 1 ⇔ ∃a. r = people2num a

   [people2num_num2people]  Theorem

      |- ∀r. r < 1 ⇔ (people2num (num2people r) = r)

   [people2num_thm]  Theorem

      |- people2num Ursala = 0

   [people_Axiom]  Theorem

      |- ∀x0. ∃f. f Ursala = x0

   [people_EQ_people]  Theorem

      |- ∀a a'. (a = a') ⇔ (people2num a = people2num a')

   [people_case_cong]  Theorem

      |- ∀M M' v0.
           (M = M') ∧ ((M' = Ursala) ⇒ (v0 = v0')) ⇒
           ((case M of Ursala => v0) = case M' of Ursala => v0')

   [people_case_def]  Theorem

      |- ∀v0. (case Ursala of Ursala => v0) = v0

   [people_induction]  Theorem

      |- ∀P. P Ursala ⇒ ∀a. P a

   [people_nchotomy]  Theorem

      |- ∀a. a = Ursala

   [princs_11]  Theorem

      |- (∀a a'. (PR a = PR a') ⇔ (a = a')) ∧
         (∀a a'. (User a = User a') ⇔ (a = a')) ∧
         ∀a a'. (Key a = Key a') ⇔ (a = a')

   [princs_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn.
             (∀a. fn (PR a) = f0 a) ∧ (∀a. fn (User a) = f1 a) ∧
             ∀a. fn (Key a) = f2 a

   [princs_case_cong]  Theorem

      |- ∀M M' f f1 f2.
           (M = M') ∧ (∀a. (M' = PR a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = User a) ⇒ (f1 a = f1' a)) ∧
           (∀a. (M' = Key a) ⇒ (f2 a = f2' a)) ⇒
           (princs_CASE M f f1 f2 = princs_CASE M' f' f1' f2')

   [princs_distinct]  Theorem

      |- (∀a' a. PR a ≠ User a') ∧ (∀a' a. PR a ≠ Key a') ∧
         ∀a' a. User a ≠ Key a'

   [princs_induction]  Theorem

      |- ∀P. (∀s. P (PR s)) ∧ (∀p. P (User p)) ∧ (∀k. P (Key k)) ⇒ ∀p. P p

   [princs_nchotomy]  Theorem

      |- ∀pp. (∃s. pp = PR s) ∨ (∃p. pp = User p) ∨ ∃k. pp = Key k

   [props_11]  Theorem

      |- (∀a a'. (USE a = USE a') ⇔ (a = a')) ∧
         (∀a0 a1 a0' a1'.
            (PK a0 a1 = PK a0' a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         ∀a a'. (AC a = AC a') ⇔ (a = a')

   [props_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn.
             (∀a. fn (USE a) = f0 a) ∧ (∀a0 a1. fn (PK a0 a1) = f1 a0 a1) ∧
             ∀a. fn (AC a) = f2 a

   [props_case_cong]  Theorem

      |- ∀M M' f f1 f2.
           (M = M') ∧ (∀a. (M' = USE a) ⇒ (f a = f' a)) ∧
           (∀a0 a1. (M' = PK a0 a1) ⇒ (f1 a0 a1 = f1' a0 a1)) ∧
           (∀a. (M' = AC a) ⇒ (f2 a = f2' a)) ⇒
           (props_CASE M f f1 f2 = props_CASE M' f' f1' f2')

   [props_distinct]  Theorem

      |- (∀a1 a0 a. USE a ≠ PK a0 a1) ∧ (∀a' a. USE a ≠ AC a') ∧
         ∀a1 a0 a. PK a0 a1 ≠ AC a

   [props_induction]  Theorem

      |- ∀P.
           (∀s. P (USE s)) ∧ (∀p k. P (PK p k)) ∧ (∀a. P (AC a)) ⇒ ∀p. P p

   [props_nchotomy]  Theorem

      |- ∀pp. (∃s. pp = USE s) ∨ (∃p k. pp = PK p k) ∨ ∃a. pp = AC a

   [request_for_services_thm]  Theorem

      |- (M,Oi,Os) sat Name (Key KTGS) speaks_for Name (PR AS) ⇒
         (M,Oi,Os) sat
         prop (PK Ursala KUTGS) impf Name (Key KUFS) says prop (AC read) ⇒
         (M,Oi,Os) sat
         prop (PK Ursala KUTGS) impf
         Name (Key KFS) says
         Name (Key KUFS) speaks_for Name (User Ursala) ⇒
         (M,Oi,Os) sat Name (PR AS) controls prop (PK Ursala KUTGS) ⇒
         (M,Oi,Os) sat
         Name (Key KUTGS) says prop (USE (SERV FS)) andf
         Name (Key KTGS) says prop (PK Ursala KUTGS) ⇒
         (M,Oi,Os) sat
         Name (Key KFS) says
         Name (Key KUFS) speaks_for Name (User Ursala) andf
         Name (Key KUFS) says prop (AC read)

   [servers2num_11]  Theorem

      |- ∀a a'. (servers2num a = servers2num a') ⇔ (a = a')

   [servers2num_ONTO]  Theorem

      |- ∀r. r < 3 ⇔ ∃a. r = servers2num a

   [servers2num_num2servers]  Theorem

      |- ∀r. r < 3 ⇔ (servers2num (num2servers r) = r)

   [servers2num_thm]  Theorem

      |- (servers2num AS = 0) ∧ (servers2num TGS = 1) ∧
         (servers2num FS = 2)

   [servers_Axiom]  Theorem

      |- ∀x0 x1 x2. ∃f. (f AS = x0) ∧ (f TGS = x1) ∧ (f FS = x2)

   [servers_EQ_servers]  Theorem

      |- ∀a a'. (a = a') ⇔ (servers2num a = servers2num a')

   [servers_case_cong]  Theorem

      |- ∀M M' v0 v1 v2.
           (M = M') ∧ ((M' = AS) ⇒ (v0 = v0')) ∧
           ((M' = TGS) ⇒ (v1 = v1')) ∧ ((M' = FS) ⇒ (v2 = v2')) ⇒
           ((case M of AS => v0 | TGS => v1 | FS => v2) =
            case M' of AS => v0' | TGS => v1' | FS => v2')

   [servers_case_def]  Theorem

      |- (∀v0 v1 v2. (case AS of AS => v0 | TGS => v1 | FS => v2) = v0) ∧
         (∀v0 v1 v2. (case TGS of AS => v0 | TGS => v1 | FS => v2) = v1) ∧
         ∀v0 v1 v2. (case FS of AS => v0 | TGS => v1 | FS => v2) = v2

   [servers_distinct]  Theorem

      |- AS ≠ TGS ∧ AS ≠ FS ∧ TGS ≠ FS

   [servers_induction]  Theorem

      |- ∀P. P AS ∧ P FS ∧ P TGS ⇒ ∀a. P a

   [servers_nchotomy]  Theorem

      |- ∀a. (a = AS) ∨ (a = TGS) ∨ (a = FS)

   [serviceKey_11]  Theorem

      |- (∀a a'. (SERV a = SERV a') ⇔ (a = a')) ∧
         ∀a a'. (K a = K a') ⇔ (a = a')

   [serviceKey_Axiom]  Theorem

      |- ∀f0 f1. ∃fn. (∀a. fn (SERV a) = f0 a) ∧ ∀a. fn (K a) = f1 a

   [serviceKey_case_cong]  Theorem

      |- ∀M M' f f1.
           (M = M') ∧ (∀a. (M' = SERV a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = K a) ⇒ (f1 a = f1' a)) ⇒
           (serviceKey_CASE M f f1 = serviceKey_CASE M' f' f1')

   [serviceKey_distinct]  Theorem

      |- ∀a' a. SERV a ≠ K a'

   [serviceKey_induction]  Theorem

      |- ∀P. (∀s. P (SERV s)) ∧ (∀k. P (K k)) ⇒ ∀s. P s

   [serviceKey_nchotomy]  Theorem

      |- ∀ss. (∃s. ss = SERV s) ∨ ∃k. ss = K k

   [service_request_thm]  Theorem

      |- (M,Oi,Os) sat Name (Key KFS) speaks_for Name (PR TGS) ⇒
         (M,Oi,Os) sat Name (User Ursala) controls prop (AC print) ⇒
         (M,Oi,Os) sat
         Name (PR TGS) controls
         Name (Key KUFS) speaks_for Name (User Ursala) ⇒
         (M,Oi,Os) sat
         Name (Key KFS) says
         Name (Key KUFS) speaks_for Name (User Ursala) andf
         Name (Key KUFS) says prop (AC print) ⇒
         (M,Oi,Os) sat prop (AC print)

   [session_key_receipt_thm]  Theorem

      |- (M,Oi,Os) sat Name (Key KU) speaks_for Name (PR AS) ⇒
         (M,Oi,Os) sat
         prop (USE (K KUTGS)) impf
         Name (Key KUTGS) says prop (USE (SERV FS)) ⇒
         (M,Oi,Os) sat Name (PR AS) controls prop (USE (K KUTGS)) ⇒
         (M,Oi,Os) sat
         Name (Key KU) says prop (USE (K KUTGS)) andf
         Name (Key KTGS) says prop (PK Ursala KUTGS) ⇒
         (M,Oi,Os) sat
         Name (Key KUTGS) says prop (USE (SERV FS)) andf
         Name (Key KTGS) says prop (PK Ursala KUTGS)


*)
end
