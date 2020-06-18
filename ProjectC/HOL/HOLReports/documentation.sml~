(************************************************************)
(* documentation.sml: 29 February 2022                      *)
(* Author: Alfred Murabito                                  *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app load 
 ["exam2Theory","EmitTeX"];
open exam2Theory EmitTeX;

print_theories_as_tex_doc
["exam2"] "Exam2Report";

