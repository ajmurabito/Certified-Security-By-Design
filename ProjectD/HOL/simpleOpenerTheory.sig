signature simpleOpenerTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val command_BIJ : thm
    val command_CASE : thm
    val command_TY_DEF : thm
    val command_size_def : thm
    val output_BIJ : thm
    val output_CASE : thm
    val output_TY_DEF : thm
    val output_size_def : thm
    val state_BIJ : thm
    val state_CASE : thm
    val state_TY_DEF : thm
    val state_size_def : thm

  (*  Theorems  *)
    val command2num_11 : thm
    val command2num_ONTO : thm
    val command2num_num2command : thm
    val command2num_thm : thm
    val command_Axiom : thm
    val command_EQ_command : thm
    val command_case_cong : thm
    val command_case_def : thm
    val command_distinct : thm
    val command_distinct_clauses : thm
    val command_induction : thm
    val command_nchotomy : thm
    val datatype_command : thm
    val datatype_output : thm
    val datatype_state : thm
    val num2command_11 : thm
    val num2command_ONTO : thm
    val num2command_command2num : thm
    val num2command_thm : thm
    val num2output_11 : thm
    val num2output_ONTO : thm
    val num2output_output2num : thm
    val num2output_thm : thm
    val num2state_11 : thm
    val num2state_ONTO : thm
    val num2state_state2num : thm
    val num2state_thm : thm
    val output2num_11 : thm
    val output2num_ONTO : thm
    val output2num_num2output : thm
    val output2num_thm : thm
    val output_Axiom : thm
    val output_EQ_output : thm
    val output_case_cong : thm
    val output_case_def : thm
    val output_distinct : thm
    val output_distinct_clauses : thm
    val output_induction : thm
    val output_nchotomy : thm
    val simpleCounter_rules : thm
    val simpleOpenerTR_clauses : thm
    val simpleOpenerTR_rules : thm
    val simpleOpenerTrans_Equiv_TR : thm
    val simpleOpenerns_def : thm
    val simpleOpenerns_ind : thm
    val simpleOpenerout_def : thm
    val simpleOpenerout_ind : thm
    val state2num_11 : thm
    val state2num_ONTO : thm
    val state2num_num2state : thm
    val state2num_thm : thm
    val state_Axiom : thm
    val state_EQ_state : thm
    val state_case_cong : thm
    val state_case_def : thm
    val state_distinct : thm
    val state_distinct_clauses : thm
    val state_induction : thm
    val state_nchotomy : thm

  val simpleOpener_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [sm] Parent theory of "simpleOpener"

   [command_BIJ]  Definition

      |- (∀a. num2command (command2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (command2num (num2command r) = r)

   [command_CASE]  Definition

      |- ∀x v0 v1.
           (case x of i0 => v0 | i1 => v1) =
           (λm. if m = 0 then v0 else v1) (command2num x)

   [command_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [command_size_def]  Definition

      |- ∀x. command_size x = 0

   [output_BIJ]  Definition

      |- (∀a. num2output (output2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (output2num (num2output r) = r)

   [output_CASE]  Definition

      |- ∀x v0 v1.
           (case x of o0 => v0 | o1 => v1) =
           (λm. if m = 0 then v0 else v1) (output2num x)

   [output_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [output_size_def]  Definition

      |- ∀x. output_size x = 0

   [state_BIJ]  Definition

      |- (∀a. num2state (state2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (state2num (num2state r) = r)

   [state_CASE]  Definition

      |- ∀x v0 v1.
           (case x of S0 => v0 | S1 => v1) =
           (λm. if m = 0 then v0 else v1) (state2num x)

   [state_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [state_size_def]  Definition

      |- ∀x. state_size x = 0

   [command2num_11]  Theorem

      |- ∀a a'. (command2num a = command2num a') ⇔ (a = a')

   [command2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = command2num a

   [command2num_num2command]  Theorem

      |- ∀r. r < 2 ⇔ (command2num (num2command r) = r)

   [command2num_thm]  Theorem

      |- (command2num i0 = 0) ∧ (command2num i1 = 1)

   [command_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f i0 = x0) ∧ (f i1 = x1)

   [command_EQ_command]  Theorem

      |- ∀a a'. (a = a') ⇔ (command2num a = command2num a')

   [command_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = i0) ⇒ (v0 = v0')) ∧ ((M' = i1) ⇒ (v1 = v1')) ⇒
           ((case M of i0 => v0 | i1 => v1) =
            case M' of i0 => v0' | i1 => v1')

   [command_case_def]  Theorem

      |- (∀v0 v1. (case i0 of i0 => v0 | i1 => v1) = v0) ∧
         ∀v0 v1. (case i1 of i0 => v0 | i1 => v1) = v1

   [command_distinct]  Theorem

      |- i0 ≠ i1

   [command_distinct_clauses]  Theorem

      |- i0 ≠ i1

   [command_induction]  Theorem

      |- ∀P. P i0 ∧ P i1 ⇒ ∀a. P a

   [command_nchotomy]  Theorem

      |- ∀a. (a = i0) ∨ (a = i1)

   [datatype_command]  Theorem

      |- DATATYPE (command i0 i1)

   [datatype_output]  Theorem

      |- DATATYPE (output o0 o1)

   [datatype_state]  Theorem

      |- DATATYPE (state S0 S1)

   [num2command_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2command r = num2command r') ⇔ (r = r'))

   [num2command_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2command r) ∧ r < 2

   [num2command_command2num]  Theorem

      |- ∀a. num2command (command2num a) = a

   [num2command_thm]  Theorem

      |- (num2command 0 = i0) ∧ (num2command 1 = i1)

   [num2output_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2output r = num2output r') ⇔ (r = r'))

   [num2output_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2output r) ∧ r < 2

   [num2output_output2num]  Theorem

      |- ∀a. num2output (output2num a) = a

   [num2output_thm]  Theorem

      |- (num2output 0 = o0) ∧ (num2output 1 = o1)

   [num2state_11]  Theorem

      |- ∀r r'. r < 2 ⇒ r' < 2 ⇒ ((num2state r = num2state r') ⇔ (r = r'))

   [num2state_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2state r) ∧ r < 2

   [num2state_state2num]  Theorem

      |- ∀a. num2state (state2num a) = a

   [num2state_thm]  Theorem

      |- (num2state 0 = S0) ∧ (num2state 1 = S1)

   [output2num_11]  Theorem

      |- ∀a a'. (output2num a = output2num a') ⇔ (a = a')

   [output2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = output2num a

   [output2num_num2output]  Theorem

      |- ∀r. r < 2 ⇔ (output2num (num2output r) = r)

   [output2num_thm]  Theorem

      |- (output2num o0 = 0) ∧ (output2num o1 = 1)

   [output_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f o0 = x0) ∧ (f o1 = x1)

   [output_EQ_output]  Theorem

      |- ∀a a'. (a = a') ⇔ (output2num a = output2num a')

   [output_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = o0) ⇒ (v0 = v0')) ∧ ((M' = o1) ⇒ (v1 = v1')) ⇒
           ((case M of o0 => v0 | o1 => v1) =
            case M' of o0 => v0' | o1 => v1')

   [output_case_def]  Theorem

      |- (∀v0 v1. (case o0 of o0 => v0 | o1 => v1) = v0) ∧
         ∀v0 v1. (case o1 of o0 => v0 | o1 => v1) = v1

   [output_distinct]  Theorem

      |- o0 ≠ o1

   [output_distinct_clauses]  Theorem

      |- o0 ≠ o1

   [output_induction]  Theorem

      |- ∀P. P o0 ∧ P o1 ⇒ ∀a. P a

   [output_nchotomy]  Theorem

      |- ∀a. (a = o0) ∨ (a = o1)

   [simpleCounter_rules]  Theorem

      |- (∀ins outs.
            TR i1 (CFG (i1::ins) S0 outs) (CFG ins S1 (o1::outs))) ∧
         ∀ins outs. TR i0 (CFG (i0::ins) S1 outs) (CFG ins S0 (o0::outs))

   [simpleOpenerTR_clauses]  Theorem

      |- (∀x x1s s1 out1s x2s out2s s2.
            TR x (CFG x1s s1 out1s) (CFG x2s s2 out2s) ⇔
            ∃NS Out ins.
              (x1s = x::ins) ∧ (x2s = ins) ∧ (s2 = NS s1 x) ∧
              (out2s = Out s1 x::out1s)) ∧
         ∀x x1s s1 out1s x2s out2s.
           TR x (CFG x1s s1 out1s)
             (CFG x2s (simpleOpenerns s1 x)
                (simpleOpenerout s1 x::out2s)) ⇔
           ∃ins. (x1s = x::ins) ∧ (x2s = ins) ∧ (out2s = out1s)

   [simpleOpenerTR_rules]  Theorem

      |- ∀s x ins outs.
           TR x (CFG (x::ins) s outs)
             (CFG ins (simpleOpenerns s x) (simpleOpenerout s x::outs))

   [simpleOpenerTrans_Equiv_TR]  Theorem

      |- TR x (CFG (x::ins) s outs)
           (CFG ins (simpleOpenerns s x) (simpleOpenerout s x::outs)) ⇔
         Trans x s (simpleOpenerns s x)

   [simpleOpenerns_def]  Theorem

      |- (simpleOpenerns S0 i1 = S1) ∧ (simpleOpenerns S1 i0 = S0)

   [simpleOpenerns_ind]  Theorem

      |- ∀P. P S0 i1 ∧ P S1 i0 ∧ P S0 i0 ∧ P S1 i1 ⇒ ∀v v1. P v v1

   [simpleOpenerout_def]  Theorem

      |- (simpleOpenerout S0 i1 = o1) ∧ (simpleOpenerout S1 i0 = o0)

   [simpleOpenerout_ind]  Theorem

      |- ∀P. P S0 i1 ∧ P S1 i0 ∧ P S0 i0 ∧ P S1 i1 ⇒ ∀v v1. P v v1

   [state2num_11]  Theorem

      |- ∀a a'. (state2num a = state2num a') ⇔ (a = a')

   [state2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = state2num a

   [state2num_num2state]  Theorem

      |- ∀r. r < 2 ⇔ (state2num (num2state r) = r)

   [state2num_thm]  Theorem

      |- (state2num S0 = 0) ∧ (state2num S1 = 1)

   [state_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f S0 = x0) ∧ (f S1 = x1)

   [state_EQ_state]  Theorem

      |- ∀a a'. (a = a') ⇔ (state2num a = state2num a')

   [state_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = S0) ⇒ (v0 = v0')) ∧ ((M' = S1) ⇒ (v1 = v1')) ⇒
           ((case M of S0 => v0 | S1 => v1) =
            case M' of S0 => v0' | S1 => v1')

   [state_case_def]  Theorem

      |- (∀v0 v1. (case S0 of S0 => v0 | S1 => v1) = v0) ∧
         ∀v0 v1. (case S1 of S0 => v0 | S1 => v1) = v1

   [state_distinct]  Theorem

      |- S0 ≠ S1

   [state_distinct_clauses]  Theorem

      |- S0 ≠ S1

   [state_induction]  Theorem

      |- ∀P. P S0 ∧ P S1 ⇒ ∀a. P a

   [state_nchotomy]  Theorem

      |- ∀a. (a = S0) ∨ (a = S1)


*)
end
