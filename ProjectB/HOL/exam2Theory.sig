signature exam2Theory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val RichesPrincipals_TY_DEF : thm
    val RichesPrincipals_case_def : thm
    val RichesPrincipals_size_def : thm
    val accounts_TY_DEF : thm
    val accounts_case_def : thm
    val accounts_size_def : thm
    val passPrinc_TY_DEF : thm
    val passPrinc_case_def : thm
    val passPrinc_size_def : thm
    val people2_BIJ : thm
    val people2_CASE : thm
    val people2_TY_DEF : thm
    val people2_size_def : thm
    val people_BIJ : thm
    val people_CASE : thm
    val people_TY_DEF : thm
    val people_size_def : thm
    val pinIdPrinc_TY_DEF : thm
    val pinIdPrinc_case_def : thm
    val pinIdPrinc_size_def : thm
    val principals_TY_DEF : thm
    val principals_case_def : thm
    val principals_size_def : thm
    val richAccts_TY_DEF : thm
    val richAccts_case_def : thm
    val richAccts_size_def : thm
    val roles2_BIJ : thm
    val roles2_CASE : thm
    val roles2_TY_DEF : thm
    val roles2_size_def : thm
    val roles_BIJ : thm
    val roles_CASE : thm
    val roles_TY_DEF : thm
    val roles_size_def : thm

  (*  Theorems  *)
    val RichesPrincipals_11 : thm
    val RichesPrincipals_Axiom : thm
    val RichesPrincipals_case_cong : thm
    val RichesPrincipals_distinct : thm
    val RichesPrincipals_induction : thm
    val RichesPrincipals_nchotomy : thm
    val accounts_11 : thm
    val accounts_Axiom : thm
    val accounts_case_cong : thm
    val accounts_induction : thm
    val accounts_nchotomy : thm
    val datatype_RichesPrincipals : thm
    val datatype_accounts : thm
    val datatype_passPrinc : thm
    val datatype_people : thm
    val datatype_people2 : thm
    val datatype_pinIdPrinc : thm
    val datatype_principals : thm
    val datatype_richAccts : thm
    val datatype_roles : thm
    val datatype_roles2 : thm
    val exam2_1_thm : thm
    val exam2_2_thm : thm
    val num2people2_11 : thm
    val num2people2_ONTO : thm
    val num2people2_people22num : thm
    val num2people2_thm : thm
    val num2people_11 : thm
    val num2people_ONTO : thm
    val num2people_people2num : thm
    val num2people_thm : thm
    val num2roles2_11 : thm
    val num2roles2_ONTO : thm
    val num2roles2_roles22num : thm
    val num2roles2_thm : thm
    val num2roles_11 : thm
    val num2roles_ONTO : thm
    val num2roles_roles2num : thm
    val num2roles_thm : thm
    val passPrinc_11 : thm
    val passPrinc_Axiom : thm
    val passPrinc_case_cong : thm
    val passPrinc_induction : thm
    val passPrinc_nchotomy : thm
    val people22num_11 : thm
    val people22num_ONTO : thm
    val people22num_num2people2 : thm
    val people22num_thm : thm
    val people2_Axiom : thm
    val people2_EQ_people2 : thm
    val people2_case_cong : thm
    val people2_case_def : thm
    val people2_induction : thm
    val people2_nchotomy : thm
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
    val pinIdPrinc_11 : thm
    val pinIdPrinc_Axiom : thm
    val pinIdPrinc_case_cong : thm
    val pinIdPrinc_induction : thm
    val pinIdPrinc_nchotomy : thm
    val principals_11 : thm
    val principals_Axiom : thm
    val principals_case_cong : thm
    val principals_distinct : thm
    val principals_induction : thm
    val principals_nchotomy : thm
    val richAccts_11 : thm
    val richAccts_Axiom : thm
    val richAccts_case_cong : thm
    val richAccts_induction : thm
    val richAccts_nchotomy : thm
    val roles22num_11 : thm
    val roles22num_ONTO : thm
    val roles22num_num2roles2 : thm
    val roles22num_thm : thm
    val roles2_Axiom : thm
    val roles2_EQ_roles2 : thm
    val roles2_case_cong : thm
    val roles2_case_def : thm
    val roles2_induction : thm
    val roles2_nchotomy : thm
    val roles2num_11 : thm
    val roles2num_ONTO : thm
    val roles2num_num2roles : thm
    val roles2num_thm : thm
    val roles_Axiom : thm
    val roles_EQ_roles : thm
    val roles_case_cong : thm
    val roles_case_def : thm
    val roles_induction : thm
    val roles_nchotomy : thm

  val exam2_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclDrules] Parent theory of "exam2"

   [RichesPrincipals_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'RichesPrincipals' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (a,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0)) (a,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC (SUC 0))) (ARB,a,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC (SUC (SUC 0))))
                             (ARB,ARB,a) (λn. ind_type$BOTTOM)) a) ⇒
                     'RichesPrincipals' a0) ⇒
                  'RichesPrincipals' a0) rep

   [RichesPrincipals_case_def]  Definition

      |- (∀a f f1 f2 f3 f4.
            RichesPrincipals_CASE (PR2 a) f f1 f2 f3 f4 = f a) ∧
         (∀a f f1 f2 f3 f4.
            RichesPrincipals_CASE (PIN a) f f1 f2 f3 f4 = f1 a) ∧
         (∀a f f1 f2 f3 f4.
            RichesPrincipals_CASE (ID a) f f1 f2 f3 f4 = f2 a) ∧
         (∀a f f1 f2 f3 f4.
            RichesPrincipals_CASE (Role2 a) f f1 f2 f3 f4 = f3 a) ∧
         ∀a f f1 f2 f3 f4.
           RichesPrincipals_CASE (BN a) f f1 f2 f3 f4 = f4 a

   [RichesPrincipals_size_def]  Definition

      |- (∀a. RichesPrincipals_size (PR2 a) = 1 + pinIdPrinc_size a) ∧
         (∀a. RichesPrincipals_size (PIN a) = 1 + pinIdPrinc_size a) ∧
         (∀a. RichesPrincipals_size (ID a) = 1 + pinIdPrinc_size a) ∧
         (∀a. RichesPrincipals_size (Role2 a) = 1 + roles2_size a) ∧
         ∀a. RichesPrincipals_size (BN a) = 1 + a

   [accounts_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'accounts' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ⇒
                     'accounts' a0) ⇒
                  'accounts' a0) rep

   [accounts_case_def]  Definition

      |- ∀a f. accounts_CASE (AC a) f = f a

   [accounts_size_def]  Definition

      |- ∀a. accounts_size (AC a) = 1 + people_size a

   [passPrinc_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'passPrinc' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ⇒
                     'passPrinc' a0) ⇒
                  'passPrinc' a0) rep

   [passPrinc_case_def]  Definition

      |- ∀a f. passPrinc_CASE (Users a) f = f a

   [passPrinc_size_def]  Definition

      |- ∀a. passPrinc_size (Users a) = 1 + people_size a

   [people2_BIJ]  Definition

      |- (∀a. num2people2 (people22num a) = a) ∧
         ∀r. (λn. n < 1) r ⇔ (people22num (num2people2 r) = r)

   [people2_CASE]  Definition

      |- ∀x v0. (case x of Don => v0) = (λm. v0) (people22num x)

   [people2_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 1) rep

   [people2_size_def]  Definition

      |- ∀x. people2_size x = 0

   [people_BIJ]  Definition

      |- (∀a. num2people (people2num a) = a) ∧
         ∀r. (λn. n < 1) r ⇔ (people2num (num2people r) = r)

   [people_CASE]  Definition

      |- ∀x v0. (case x of Mary => v0) = (λm. v0) (people2num x)

   [people_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 1) rep

   [people_size_def]  Definition

      |- ∀x. people_size x = 0

   [pinIdPrinc_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'pinIdPrinc' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ⇒
                     'pinIdPrinc' a0) ⇒
                  'pinIdPrinc' a0) rep

   [pinIdPrinc_case_def]  Definition

      |- ∀a f. pinIdPrinc_CASE (Client a) f = f a

   [pinIdPrinc_size_def]  Definition

      |- ∀a. pinIdPrinc_size (Client a) = 1 + people2_size a

   [principals_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'principals' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB) (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (a,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0)) (ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'principals' a0) ⇒
                  'principals' a0) rep

   [principals_case_def]  Definition

      |- (∀a f f1 f2. principals_CASE (PR a) f f1 f2 = f a) ∧
         (∀a f f1 f2. principals_CASE (Pass a) f f1 f2 = f1 a) ∧
         ∀a f f1 f2. principals_CASE (Role a) f f1 f2 = f2 a

   [principals_size_def]  Definition

      |- (∀a. principals_size (PR a) = 1 + passPrinc_size a) ∧
         (∀a. principals_size (Pass a) = 1 + passPrinc_size a) ∧
         ∀a. principals_size (Role a) = 1 + roles_size a

   [richAccts_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'richAccts' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ⇒
                     'richAccts' a0) ⇒
                  'richAccts' a0) rep

   [richAccts_case_def]  Definition

      |- ∀a f. richAccts_CASE (RAC a) f = f a

   [richAccts_size_def]  Definition

      |- ∀a. richAccts_size (RAC a) = 1 + pinIdPrinc_size a

   [roles2_BIJ]  Definition

      |- (∀a. num2roles2 (roles22num a) = a) ∧
         ∀r. (λn. n < 1) r ⇔ (roles22num (num2roles2 r) = r)

   [roles2_CASE]  Definition

      |- ∀x v0. (case x of BankOfRiches => v0) = (λm. v0) (roles22num x)

   [roles2_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 1) rep

   [roles2_size_def]  Definition

      |- ∀x. roles2_size x = 0

   [roles_BIJ]  Definition

      |- (∀a. num2roles (roles2num a) = a) ∧
         ∀r. (λn. n < 1) r ⇔ (roles2num (num2roles r) = r)

   [roles_CASE]  Definition

      |- ∀x v0. (case x of KennedyCenter => v0) = (λm. v0) (roles2num x)

   [roles_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 1) rep

   [roles_size_def]  Definition

      |- ∀x. roles_size x = 0

   [RichesPrincipals_11]  Theorem

      |- (∀a a'. (PR2 a = PR2 a') ⇔ (a = a')) ∧
         (∀a a'. (PIN a = PIN a') ⇔ (a = a')) ∧
         (∀a a'. (ID a = ID a') ⇔ (a = a')) ∧
         (∀a a'. (Role2 a = Role2 a') ⇔ (a = a')) ∧
         ∀a a'. (BN a = BN a') ⇔ (a = a')

   [RichesPrincipals_Axiom]  Theorem

      |- ∀f0 f1 f2 f3 f4.
           ∃fn.
             (∀a. fn (PR2 a) = f0 a) ∧ (∀a. fn (PIN a) = f1 a) ∧
             (∀a. fn (ID a) = f2 a) ∧ (∀a. fn (Role2 a) = f3 a) ∧
             ∀a. fn (BN a) = f4 a

   [RichesPrincipals_case_cong]  Theorem

      |- ∀M M' f f1 f2 f3 f4.
           (M = M') ∧ (∀a. (M' = PR2 a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = PIN a) ⇒ (f1 a = f1' a)) ∧
           (∀a. (M' = ID a) ⇒ (f2 a = f2' a)) ∧
           (∀a. (M' = Role2 a) ⇒ (f3 a = f3' a)) ∧
           (∀a. (M' = BN a) ⇒ (f4 a = f4' a)) ⇒
           (RichesPrincipals_CASE M f f1 f2 f3 f4 =
            RichesPrincipals_CASE M' f' f1' f2' f3' f4')

   [RichesPrincipals_distinct]  Theorem

      |- (∀a' a. PR2 a ≠ PIN a') ∧ (∀a' a. PR2 a ≠ ID a') ∧
         (∀a' a. PR2 a ≠ Role2 a') ∧ (∀a' a. PR2 a ≠ BN a') ∧
         (∀a' a. PIN a ≠ ID a') ∧ (∀a' a. PIN a ≠ Role2 a') ∧
         (∀a' a. PIN a ≠ BN a') ∧ (∀a' a. ID a ≠ Role2 a') ∧
         (∀a' a. ID a ≠ BN a') ∧ ∀a' a. Role2 a ≠ BN a'

   [RichesPrincipals_induction]  Theorem

      |- ∀P.
           (∀p. P (PR2 p)) ∧ (∀p. P (PIN p)) ∧ (∀p. P (ID p)) ∧
           (∀r. P (Role2 r)) ∧ (∀n. P (BN n)) ⇒
           ∀R. P R

   [RichesPrincipals_nchotomy]  Theorem

      |- ∀RR.
           (∃p. RR = PR2 p) ∨ (∃p. RR = PIN p) ∨ (∃p. RR = ID p) ∨
           (∃r. RR = Role2 r) ∨ ∃n. RR = BN n

   [accounts_11]  Theorem

      |- ∀a a'. (AC a = AC a') ⇔ (a = a')

   [accounts_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a. fn (AC a) = f a

   [accounts_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧ (∀a. (M' = AC a) ⇒ (f a = f' a)) ⇒
           (accounts_CASE M f = accounts_CASE M' f')

   [accounts_induction]  Theorem

      |- ∀P. (∀p. P (AC p)) ⇒ ∀a. P a

   [accounts_nchotomy]  Theorem

      |- ∀aa. ∃p. aa = AC p

   [datatype_RichesPrincipals]  Theorem

      |- DATATYPE (RichesPrincipals PR2 PIN ID Role2 BN)

   [datatype_accounts]  Theorem

      |- DATATYPE (accounts AC)

   [datatype_passPrinc]  Theorem

      |- DATATYPE (passPrinc Users)

   [datatype_people]  Theorem

      |- DATATYPE (people Mary)

   [datatype_people2]  Theorem

      |- DATATYPE (people2 Don)

   [datatype_pinIdPrinc]  Theorem

      |- DATATYPE (pinIdPrinc Client)

   [datatype_principals]  Theorem

      |- DATATYPE (principals PR Pass Role)

   [datatype_richAccts]  Theorem

      |- DATATYPE (richAccts RAC)

   [datatype_roles]  Theorem

      |- DATATYPE (roles KennedyCenter)

   [datatype_roles2]  Theorem

      |- DATATYPE (roles2 BankOfRiches)

   [exam2_1_thm]  Theorem

      [oracles: DISK_THM] [axioms: ]
      [(M,Oi,Os) sat
       Name (Role KennedyCenter) controls Name (PR (Users Mary)) controls
       prop (AC Mary),
       (M,Oi,Os) sat Name (PR (Users Mary)) says prop (AC Mary),
       (M,Oi,Os) sat
       Name (Pass (Users Mary)) says Name (PR (Users Mary)) controls
       prop (AC Mary),
       (M,Oi,Os) sat
       Name (Pass (Users Mary)) speaks_for Name (Role KennedyCenter)]
      |- (M,Oi,Os) sat prop (AC Mary)

   [exam2_2_thm]  Theorem

      [oracles: DISK_THM] [axioms: ]
      [(M,Oi,Os) sat
       Name (Role2 BankOfRiches) controls
       Name (PR2 (Client Don)) meet Name (ID (Client Don)) meet
       Name (BN 4789111238734609) controls prop (RAC (Client Don)),
       (M,Oi,Os) sat
       Name (PIN (Client Don)) says
       Name (PR2 (Client Don)) meet Name (ID (Client Don)) meet
       Name (BN 4789111238734609) controls prop (RAC (Client Don)),
       (M,Oi,Os) sat
       Name (PR2 (Client Don)) meet Name (ID (Client Don)) meet
       Name (BN 4789111238734609) says prop (RAC (Client Don)),
       (M,Oi,Os) sat
       Name (PIN (Client Don)) speaks_for Name (Role2 BankOfRiches)]
      |- (M,Oi,Os) sat prop (RAC (Client Don))

   [num2people2_11]  Theorem

      |- ∀r r'.
           r < 1 ⇒ r' < 1 ⇒ ((num2people2 r = num2people2 r') ⇔ (r = r'))

   [num2people2_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2people2 r) ∧ r < 1

   [num2people2_people22num]  Theorem

      |- ∀a. num2people2 (people22num a) = a

   [num2people2_thm]  Theorem

      |- num2people2 0 = Don

   [num2people_11]  Theorem

      |- ∀r r'.
           r < 1 ⇒ r' < 1 ⇒ ((num2people r = num2people r') ⇔ (r = r'))

   [num2people_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2people r) ∧ r < 1

   [num2people_people2num]  Theorem

      |- ∀a. num2people (people2num a) = a

   [num2people_thm]  Theorem

      |- num2people 0 = Mary

   [num2roles2_11]  Theorem

      |- ∀r r'.
           r < 1 ⇒ r' < 1 ⇒ ((num2roles2 r = num2roles2 r') ⇔ (r = r'))

   [num2roles2_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2roles2 r) ∧ r < 1

   [num2roles2_roles22num]  Theorem

      |- ∀a. num2roles2 (roles22num a) = a

   [num2roles2_thm]  Theorem

      |- num2roles2 0 = BankOfRiches

   [num2roles_11]  Theorem

      |- ∀r r'. r < 1 ⇒ r' < 1 ⇒ ((num2roles r = num2roles r') ⇔ (r = r'))

   [num2roles_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2roles r) ∧ r < 1

   [num2roles_roles2num]  Theorem

      |- ∀a. num2roles (roles2num a) = a

   [num2roles_thm]  Theorem

      |- num2roles 0 = KennedyCenter

   [passPrinc_11]  Theorem

      |- ∀a a'. (Users a = Users a') ⇔ (a = a')

   [passPrinc_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a. fn (Users a) = f a

   [passPrinc_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧ (∀a. (M' = Users a) ⇒ (f a = f' a)) ⇒
           (passPrinc_CASE M f = passPrinc_CASE M' f')

   [passPrinc_induction]  Theorem

      |- ∀P. (∀p. P (Users p)) ⇒ ∀p. P p

   [passPrinc_nchotomy]  Theorem

      |- ∀pp. ∃p. pp = Users p

   [people22num_11]  Theorem

      |- ∀a a'. (people22num a = people22num a') ⇔ (a = a')

   [people22num_ONTO]  Theorem

      |- ∀r. r < 1 ⇔ ∃a. r = people22num a

   [people22num_num2people2]  Theorem

      |- ∀r. r < 1 ⇔ (people22num (num2people2 r) = r)

   [people22num_thm]  Theorem

      |- people22num Don = 0

   [people2_Axiom]  Theorem

      |- ∀x0. ∃f. f Don = x0

   [people2_EQ_people2]  Theorem

      |- ∀a a'. (a = a') ⇔ (people22num a = people22num a')

   [people2_case_cong]  Theorem

      |- ∀M M' v0.
           (M = M') ∧ ((M' = Don) ⇒ (v0 = v0')) ⇒
           ((case M of Don => v0) = case M' of Don => v0')

   [people2_case_def]  Theorem

      |- ∀v0. (case Don of Don => v0) = v0

   [people2_induction]  Theorem

      |- ∀P. P Don ⇒ ∀a. P a

   [people2_nchotomy]  Theorem

      |- ∀a. a = Don

   [people2num_11]  Theorem

      |- ∀a a'. (people2num a = people2num a') ⇔ (a = a')

   [people2num_ONTO]  Theorem

      |- ∀r. r < 1 ⇔ ∃a. r = people2num a

   [people2num_num2people]  Theorem

      |- ∀r. r < 1 ⇔ (people2num (num2people r) = r)

   [people2num_thm]  Theorem

      |- people2num Mary = 0

   [people_Axiom]  Theorem

      |- ∀x0. ∃f. f Mary = x0

   [people_EQ_people]  Theorem

      |- ∀a a'. (a = a') ⇔ (people2num a = people2num a')

   [people_case_cong]  Theorem

      |- ∀M M' v0.
           (M = M') ∧ ((M' = Mary) ⇒ (v0 = v0')) ⇒
           ((case M of Mary => v0) = case M' of Mary => v0')

   [people_case_def]  Theorem

      |- ∀v0. (case Mary of Mary => v0) = v0

   [people_induction]  Theorem

      |- ∀P. P Mary ⇒ ∀a. P a

   [people_nchotomy]  Theorem

      |- ∀a. a = Mary

   [pinIdPrinc_11]  Theorem

      |- ∀a a'. (Client a = Client a') ⇔ (a = a')

   [pinIdPrinc_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a. fn (Client a) = f a

   [pinIdPrinc_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧ (∀a. (M' = Client a) ⇒ (f a = f' a)) ⇒
           (pinIdPrinc_CASE M f = pinIdPrinc_CASE M' f')

   [pinIdPrinc_induction]  Theorem

      |- ∀P. (∀p. P (Client p)) ⇒ ∀p. P p

   [pinIdPrinc_nchotomy]  Theorem

      |- ∀pp. ∃p. pp = Client p

   [principals_11]  Theorem

      |- (∀a a'. (PR a = PR a') ⇔ (a = a')) ∧
         (∀a a'. (Pass a = Pass a') ⇔ (a = a')) ∧
         ∀a a'. (Role a = Role a') ⇔ (a = a')

   [principals_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn.
             (∀a. fn (PR a) = f0 a) ∧ (∀a. fn (Pass a) = f1 a) ∧
             ∀a. fn (Role a) = f2 a

   [principals_case_cong]  Theorem

      |- ∀M M' f f1 f2.
           (M = M') ∧ (∀a. (M' = PR a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = Pass a) ⇒ (f1 a = f1' a)) ∧
           (∀a. (M' = Role a) ⇒ (f2 a = f2' a)) ⇒
           (principals_CASE M f f1 f2 = principals_CASE M' f' f1' f2')

   [principals_distinct]  Theorem

      |- (∀a' a. PR a ≠ Pass a') ∧ (∀a' a. PR a ≠ Role a') ∧
         ∀a' a. Pass a ≠ Role a'

   [principals_induction]  Theorem

      |- ∀P. (∀p. P (PR p)) ∧ (∀p. P (Pass p)) ∧ (∀r. P (Role r)) ⇒ ∀p. P p

   [principals_nchotomy]  Theorem

      |- ∀pp. (∃p. pp = PR p) ∨ (∃p. pp = Pass p) ∨ ∃r. pp = Role r

   [richAccts_11]  Theorem

      |- ∀a a'. (RAC a = RAC a') ⇔ (a = a')

   [richAccts_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a. fn (RAC a) = f a

   [richAccts_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧ (∀a. (M' = RAC a) ⇒ (f a = f' a)) ⇒
           (richAccts_CASE M f = richAccts_CASE M' f')

   [richAccts_induction]  Theorem

      |- ∀P. (∀p. P (RAC p)) ⇒ ∀r. P r

   [richAccts_nchotomy]  Theorem

      |- ∀rr. ∃p. rr = RAC p

   [roles22num_11]  Theorem

      |- ∀a a'. (roles22num a = roles22num a') ⇔ (a = a')

   [roles22num_ONTO]  Theorem

      |- ∀r. r < 1 ⇔ ∃a. r = roles22num a

   [roles22num_num2roles2]  Theorem

      |- ∀r. r < 1 ⇔ (roles22num (num2roles2 r) = r)

   [roles22num_thm]  Theorem

      |- roles22num BankOfRiches = 0

   [roles2_Axiom]  Theorem

      |- ∀x0. ∃f. f BankOfRiches = x0

   [roles2_EQ_roles2]  Theorem

      |- ∀a a'. (a = a') ⇔ (roles22num a = roles22num a')

   [roles2_case_cong]  Theorem

      |- ∀M M' v0.
           (M = M') ∧ ((M' = BankOfRiches) ⇒ (v0 = v0')) ⇒
           ((case M of BankOfRiches => v0) =
            case M' of BankOfRiches => v0')

   [roles2_case_def]  Theorem

      |- ∀v0. (case BankOfRiches of BankOfRiches => v0) = v0

   [roles2_induction]  Theorem

      |- ∀P. P BankOfRiches ⇒ ∀a. P a

   [roles2_nchotomy]  Theorem

      |- ∀a. a = BankOfRiches

   [roles2num_11]  Theorem

      |- ∀a a'. (roles2num a = roles2num a') ⇔ (a = a')

   [roles2num_ONTO]  Theorem

      |- ∀r. r < 1 ⇔ ∃a. r = roles2num a

   [roles2num_num2roles]  Theorem

      |- ∀r. r < 1 ⇔ (roles2num (num2roles r) = r)

   [roles2num_thm]  Theorem

      |- roles2num KennedyCenter = 0

   [roles_Axiom]  Theorem

      |- ∀x0. ∃f. f KennedyCenter = x0

   [roles_EQ_roles]  Theorem

      |- ∀a a'. (a = a') ⇔ (roles2num a = roles2num a')

   [roles_case_cong]  Theorem

      |- ∀M M' v0.
           (M = M') ∧ ((M' = KennedyCenter) ⇒ (v0 = v0')) ⇒
           ((case M of KennedyCenter => v0) =
            case M' of KennedyCenter => v0')

   [roles_case_def]  Theorem

      |- ∀v0. (case KennedyCenter of KennedyCenter => v0) = v0

   [roles_induction]  Theorem

      |- ∀P. P KennedyCenter ⇒ ∀a. P a

   [roles_nchotomy]  Theorem

      |- ∀a. a = KennedyCenter


*)
end
