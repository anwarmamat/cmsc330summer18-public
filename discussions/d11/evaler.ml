open Parser

(* Evaluates term t (with substitution semantics). *)
let rec evaler_s (t : expr) : expr =
  t

(* Returns result of t[x := v]. *)
and subst (t : expr) (x : var) (v : expr) : expr =
  t

(* Types for closurse *)
type closure = Closure of expr * env
 and env = (var * closure) list

(* Evaluates expression t (with environments semantics). *)
let rec evaler_e (t : expr) : expr =
  let (Closure (t', _)) = evaler_e' [] t in
  t'

(* Evaluates term t in environment e. *)
and evaler_e' (e : env) (t : expr) : closure =
  Closure (e, t)
