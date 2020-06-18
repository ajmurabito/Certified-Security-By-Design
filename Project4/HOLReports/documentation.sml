(* This should be the filename - i.e. chapter8Theory.ui *)
(* that is created after running Holmake                *)                   
app load ["exercise9Theory","exercise10Theory","EmitTeX"];
open EmitTeX;

(* This should be the variable name given in the theory *)
(* i.e. val _ = new_theory "chapter8"                   *)
print_theories_as_tex_doc ["exercise9", "exercise10"] "project4Report";
