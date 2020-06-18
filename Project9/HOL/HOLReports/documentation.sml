(************************************************************)
(* documentation.sml: 15 March 2020                          *)
(* Author: Alfred Murabito                                  *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app load 
 ["SM0Theory","SM0SolutionsTheory","EmitTeX"];
open SM0Theory SM0SolutionsTheory EmitTeX;

print_theories_as_tex_doc
["SM0","SM0Solutions"] "Project9Report";

