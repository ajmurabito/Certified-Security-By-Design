signature chapter8Theory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val conjSymThm : thm
    val conjSymThmAll : thm
    val problem1Thm : thm

  val chapter8_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "chapter8"

   [patternMatches] Parent theory of "chapter8"

   [conjSymThm]  Theorem

      |- q ∧ p ⇔ p ∧ q

   [conjSymThmAll]  Theorem

      |- ∀p q. q ∧ p ⇔ p ∧ q

   [problem1Thm]  Theorem

      |- p ⇒ (p ⇒ q) ⇒ (q ⇒ r) ⇒ r


*)
end
