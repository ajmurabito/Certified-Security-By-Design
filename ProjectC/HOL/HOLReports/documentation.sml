(************************************************************)
(* documentation.sml: 19 March 2020                         *)
(* Author: Alfred Murabito                                  *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app load 
 ["exam3Theory","EmitTeX"];
open exam3Theory EmitTeX;

print_theories_as_tex_doc
["exam3"] "Exam3Report";

