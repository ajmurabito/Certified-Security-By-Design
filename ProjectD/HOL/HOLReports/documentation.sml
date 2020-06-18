(************************************************************)
(* documentation.sml: 26 March 2020                         *)
(* Author: Alfred Murabito                                  *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app load 
 ["exam4Theory","simpleOpenerTheory","EmitTeX"];
open exam4Theory simpleOpenerTheory EmitTeX;

print_theories_as_tex_doc
["exam4","simpleOpener"] "Exam4Report";

