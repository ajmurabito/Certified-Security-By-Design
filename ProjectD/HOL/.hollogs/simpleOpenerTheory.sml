<<HOL message: Created theory "simpleOpener">>
Saved theorem _____ "num2command_command2num"
Saved theorem _____ "command2num_num2command"
Saved theorem _____ "num2command_11"
Saved theorem _____ "command2num_11"
Saved theorem _____ "num2command_ONTO"
Saved theorem _____ "command2num_ONTO"
Saved theorem _____ "num2command_thm"
Saved theorem _____ "command2num_thm"
Saved theorem _____ "command_EQ_command"
Saved theorem _____ "command_case_def"
Saved theorem _____ "datatype_command"
Saved theorem _____ "command_distinct"
Saved theorem _____ "command_case_cong"
Saved theorem _____ "command_nchotomy"
Saved theorem _____ "command_Axiom"
Saved theorem _____ "command_induction"
<<HOL message: Defined type: "command">>
Saved theorem _____ "command_distinct_clauses"
Saved theorem _____ "num2state_state2num"
Saved theorem _____ "state2num_num2state"
Saved theorem _____ "num2state_11"
Saved theorem _____ "state2num_11"
Saved theorem _____ "num2state_ONTO"
Saved theorem _____ "state2num_ONTO"
Saved theorem _____ "num2state_thm"
Saved theorem _____ "state2num_thm"
Saved theorem _____ "state_EQ_state"
Saved theorem _____ "state_case_def"
Saved theorem _____ "datatype_state"
Saved theorem _____ "state_distinct"
Saved theorem _____ "state_case_cong"
Saved theorem _____ "state_nchotomy"
Saved theorem _____ "state_Axiom"
Saved theorem _____ "state_induction"
<<HOL message: Defined type: "state">>
Saved theorem _____ "state_distinct_clauses"
Saved theorem _____ "num2output_output2num"
Saved theorem _____ "output2num_num2output"
Saved theorem _____ "num2output_11"
Saved theorem _____ "output2num_11"
Saved theorem _____ "num2output_ONTO"
Saved theorem _____ "output2num_ONTO"
Saved theorem _____ "num2output_thm"
Saved theorem _____ "output2num_thm"
Saved theorem _____ "output_EQ_output"
Saved theorem _____ "output_case_def"
Saved theorem _____ "datatype_output"
Saved theorem _____ "output_distinct"
Saved theorem _____ "output_case_cong"
Saved theorem _____ "output_nchotomy"
Saved theorem _____ "output_Axiom"
Saved theorem _____ "output_induction"
<<HOL message: Defined type: "output">>
Saved theorem _____ "output_distinct_clauses"
<<HOL message: mk_functional: 
  pattern completion has added 2 clauses to the original specification.>>
<<HOL warning: GrammarDeltas.revise_data: 
  Grammar-deltas:
    overload_on("simpleOpenerns_tupled")
  invalidated by DelConstant(simpleOpener$simpleOpenerns_tupled)>>
Saved definition __ "simpleOpenerns_def"
Saved induction ___ "simpleOpenerns_ind"
<<HOL message: mk_functional: 
  pattern completion has added 2 clauses to the original specification.>>
<<HOL warning: GrammarDeltas.revise_data: 
  Grammar-deltas:
    overload_on("simpleOpenerout_tupled")
  invalidated by DelConstant(simpleOpener$simpleOpenerout_tupled)>>
Saved definition __ "simpleOpenerout_def"
Saved induction ___ "simpleOpenerout_ind"
Saved theorem _____ "simpleOpenerTR_rules"
Saved theorem _____ "simpleOpenerTR_clauses"
Saved theorem _____ "simpleOpenerTrans_Equiv_TR"
Saved theorem _____ "simpleCounter_rules"
Exporting theory "simpleOpener" ... done.
Theory "simpleOpener" took 0.27725s to build
Theory: simpleOpener

Parents:
    sm

Type constants:
    command 0
    output 0
    state 0

Term constants:
    S0                :state
    S1                :state
    command2num       :command -> num
    command_CASE      :command -> α -> α -> α
    command_size      :command -> num
    i0                :command
    i1                :command
    num2command       :num -> command
    num2output        :num -> output
    num2state         :num -> state
    o0                :output
    o1                :output
    output2num        :output -> num
    output_CASE       :output -> α -> α -> α
    output_size       :output -> num
    simpleOpenerns    :state -> command -> state
    simpleOpenerout   :state -> command -> output
    state2num         :state -> num
    state_CASE        :state -> α -> α -> α
    state_size        :state -> num

Definitions:
    @tempS0_def
      |- S0 = num2state 0
    @tempS1_def
      |- S1 = num2state 1
    @tempi0_def
      |- i0 = num2command 0
    @tempi1_def
      |- i1 = num2command 1
    @tempo0_def
      |- o0 = num2output 0
    @tempo1_def
      |- o1 = num2output 1
    command_BIJ
      |- (∀a. num2command (command2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (command2num (num2command r) = r)
    command_CASE
      |- ∀x v0 v1.
           (case x of i0 => v0 | i1 => v1) =
           (λm. if m = 0 then v0 else v1) (command2num x)
    command_TY_DEF
      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep
    command_size_def
      |- ∀x. command_size x = 0
    output_BIJ
      |- (∀a. num2output (output2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (output2num (num2output r) = r)
    output_CASE
      |- ∀x v0 v1.
           (case x of o0 => v0 | o1 => v1) =
           (λm. if m = 0 then v0 else v1) (output2num x)
    output_TY_DEF
      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep
    output_size_def
      |- ∀x. output_size x = 0
    state_BIJ
      |- (∀a. num2state (state2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (state2num (num2state r) = r)
    state_CASE
      |- ∀x v0 v1.
           (case x of S0 => v0 | S1 => v1) =
           (λm. if m = 0 then v0 else v1) (state2num x)
    state_TY_DEF
      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep
    state_size_def
      |- ∀x. state_size x = 0

Theorems:
    command2num_11
      |- ∀a a'. (command2num a = command2num a') ⇔ (a = a')
    command2num_ONTO
      |- ∀r. r < 2 ⇔ ∃a. r = command2num a
    command2num_num2command
      |- ∀r. r < 2 ⇔ (command2num (num2command r) = r)
    command2num_thm
      |- (command2num i0 = 0) ∧ (command2num i1 = 1)
    command_Axiom
      |- ∀x0 x1. ∃f. (f i0 = x0) ∧ (f i1 = x1)
    command_EQ_command
      |- ∀a a'. (a = a') ⇔ (command2num a = command2num a')
    command_case_cong
      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = i0) ⇒ (v0 = v0')) ∧
           ((M' = i1) ⇒ (v1 = v1')) ⇒
           ((case M of i0 => v0 | i1 => v1) =
            case M' of i0 => v0' | i1 => v1')
    command_case_def
      |- (∀v0 v1. (case i0 of i0 => v0 | i1 => v1) = v0) ∧
         ∀v0 v1. (case i1 of i0 => v0 | i1 => v1) = v1
    command_distinct
      |- i0 ≠ i1
    command_distinct_clauses
      |- i0 ≠ i1
    command_induction
      |- ∀P. P i0 ∧ P i1 ⇒ ∀a. P a
    command_nchotomy
      |- ∀a. (a = i0) ∨ (a = i1)
    datatype_command
      |- DATATYPE (command i0 i1)
    datatype_output
      |- DATATYPE (output o0 o1)
    datatype_state
      |- DATATYPE (state S0 S1)
    num2command_11
      |- ∀r r'.
           r < 2 ⇒
           r' < 2 ⇒
           ((num2command r = num2command r') ⇔ (r = r'))
    num2command_ONTO
      |- ∀a. ∃r. (a = num2command r) ∧ r < 2
    num2command_command2num
      |- ∀a. num2command (command2num a) = a
    num2command_thm
      |- (num2command 0 = i0) ∧ (num2command 1 = i1)
    num2output_11
      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2output r = num2output r') ⇔ (r = r'))
    num2output_ONTO
      |- ∀a. ∃r. (a = num2output r) ∧ r < 2
    num2output_output2num
      |- ∀a. num2output (output2num a) = a
    num2output_thm
      |- (num2output 0 = o0) ∧ (num2output 1 = o1)
    num2state_11
      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2state r = num2state r') ⇔ (r = r'))
    num2state_ONTO
      |- ∀a. ∃r. (a = num2state r) ∧ r < 2
    num2state_state2num
      |- ∀a. num2state (state2num a) = a
    num2state_thm
      |- (num2state 0 = S0) ∧ (num2state 1 = S1)
    output2num_11
      |- ∀a a'. (output2num a = output2num a') ⇔ (a = a')
    output2num_ONTO
      |- ∀r. r < 2 ⇔ ∃a. r = output2num a
    output2num_num2output
      |- ∀r. r < 2 ⇔ (output2num (num2output r) = r)
    output2num_thm
      |- (output2num o0 = 0) ∧ (output2num o1 = 1)
    output_Axiom
      |- ∀x0 x1. ∃f. (f o0 = x0) ∧ (f o1 = x1)
    output_EQ_output
      |- ∀a a'. (a = a') ⇔ (output2num a = output2num a')
    output_case_cong
      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = o0) ⇒ (v0 = v0')) ∧
           ((M' = o1) ⇒ (v1 = v1')) ⇒
           ((case M of o0 => v0 | o1 => v1) =
            case M' of o0 => v0' | o1 => v1')
    output_case_def
      |- (∀v0 v1. (case o0 of o0 => v0 | o1 => v1) = v0) ∧
         ∀v0 v1. (case o1 of o0 => v0 | o1 => v1) = v1
    output_distinct
      |- o0 ≠ o1
    output_distinct_clauses
      |- o0 ≠ o1
    output_induction
      |- ∀P. P o0 ∧ P o1 ⇒ ∀a. P a
    output_nchotomy
      |- ∀a. (a = o0) ∨ (a = o1)
    simpleCounter_rules
      |- (∀ins outs.
            TR i1 (CFG (i1::ins) S0 outs) (CFG ins S1 (o1::outs))) ∧
         ∀ins outs.
           TR i0 (CFG (i0::ins) S1 outs) (CFG ins S0 (o0::outs))
    simpleOpenerTR_clauses
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
    simpleOpenerTR_rules
      |- ∀s x ins outs.
           TR x (CFG (x::ins) s outs)
             (CFG ins (simpleOpenerns s x) (simpleOpenerout s x::outs))
    simpleOpenerTrans_Equiv_TR
      |- TR x (CFG (x::ins) s outs)
           (CFG ins (simpleOpenerns s x) (simpleOpenerout s x::outs)) ⇔
         Trans x s (simpleOpenerns s x)
    simpleOpenerns_def
      |- (simpleOpenerns S0 i1 = S1) ∧ (simpleOpenerns S1 i0 = S0)
    simpleOpenerns_ind
      |- ∀P. P S0 i1 ∧ P S1 i0 ∧ P S0 i0 ∧ P S1 i1 ⇒ ∀v v1. P v v1
    simpleOpenerout_def
      |- (simpleOpenerout S0 i1 = o1) ∧ (simpleOpenerout S1 i0 = o0)
    simpleOpenerout_ind
      |- ∀P. P S0 i1 ∧ P S1 i0 ∧ P S0 i0 ∧ P S1 i1 ⇒ ∀v v1. P v v1
    state2num_11
      |- ∀a a'. (state2num a = state2num a') ⇔ (a = a')
    state2num_ONTO
      |- ∀r. r < 2 ⇔ ∃a. r = state2num a
    state2num_num2state
      |- ∀r. r < 2 ⇔ (state2num (num2state r) = r)
    state2num_thm
      |- (state2num S0 = 0) ∧ (state2num S1 = 1)
    state_Axiom
      |- ∀x0 x1. ∃f. (f S0 = x0) ∧ (f S1 = x1)
    state_EQ_state
      |- ∀a a'. (a = a') ⇔ (state2num a = state2num a')
    state_case_cong
      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = S0) ⇒ (v0 = v0')) ∧
           ((M' = S1) ⇒ (v1 = v1')) ⇒
           ((case M of S0 => v0 | S1 => v1) =
            case M' of S0 => v0' | S1 => v1')
    state_case_def
      |- (∀v0 v1. (case S0 of S0 => v0 | S1 => v1) = v0) ∧
         ∀v0 v1. (case S1 of S0 => v0 | S1 => v1) = v1
    state_distinct
      |- S0 ≠ S1
    state_distinct_clauses
      |- S0 ≠ S1
    state_induction
      |- ∀P. P S0 ∧ P S1 ⇒ ∀a. P a
    state_nchotomy
      |- ∀a. (a = S0) ∨ (a = S1)
Completed load of simpleOpenerScript
