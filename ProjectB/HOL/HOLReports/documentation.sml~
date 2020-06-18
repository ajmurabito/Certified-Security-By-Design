(************************************************************)
(* documentation.sml: 22 February 2022                      *)
(* Author: Alfred Murabito                                  *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app load 
 ["solutions1Theory","conops0SolutionTheory","EmitTeX"];
open solutions1Theory conops0SolutionTheory EmitTeX;

print_theories_as_tex_doc
["solutions1","conops0Solution"] "Project6Report";

