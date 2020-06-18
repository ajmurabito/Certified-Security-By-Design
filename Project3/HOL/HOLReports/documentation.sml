(************************************************************)
(* documentation.sml: 21 March 2020                         *)
(* Author: Alfred Murabito                                  *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* This should be the filename - i.e. chapter8Theory.ui *)
(* that is created after running Holmake                *)                   
app load ["chapter8Theory","EmitTeX"];
open chapter8Theory EmitTeX;

(* This should be the variable name given in the theory *)
(* i.e. val _ = new_theory "chapter8"                   *)

print_theories_as_tex_doc ["chapter8"] "chapter8Report";
