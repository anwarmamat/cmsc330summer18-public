open Ast

(* Church Booleans *)
(* You must implement these. See the slides and other resources
   for the encodings. *)

let church_t = Var "unimplemented"
let church_f = Var "unimplemented"
let church_if = Var "unimplemented" 
let church_and = Var "unimplemented" 

(* Church Numerals *)
(* These have been implemented for you. *)

let succ =
    let a = Var "f" in
    let b = App (App (Var "n", Var "f"), Var "x") in
    Fun ("n", Fun ("f", Fun ("x", App (a, b))))
let add = Fun ("m", Fun ("n", App (App (Var "n", succ), Var "m")))

(* The discovery of pred is due to Church's student Kleene (yes, the same
   Kleene of Kleene star closure). He came up with the solution while
   being exposed to laughing gas while getting wisdom teeth pulled. *)

let pred =
    let a = Var "n" in
    let b = Fun ("g", Fun ("h", App (Var "h", App (Var "g", Var "f")))) in
    let c = Fun ("u", Var "x") in
    let d = Fun ("u", Var "u") in
    Fun ("n", Fun ("f", Fun ("x", App (App (App (a, b), c), d))))
let sub = Fun ("m", Fun ("n", App (App (Var "n", pred), Var "m")))
let iszero = Fun ("n", App (App (Var "n", Fun ("x", church_f)), church_t))
let leq = Fun ("m", Fun ("n", App (iszero, App (App (sub, Var "m"), Var "n"))))
let eq =
    let left = App (App (leq, Var "m"), Var "n") in
    let right = App (App (leq, Var "n"), Var "m") in
    Fun ("m", Fun ("n", App (App (church_and, left), right)))

(* Fixpoint Combinator *)
(* This is the standard (not CBV) fixpoint combinator. Our evaluator is
   lazy so this combinator will work fine. *)

let fix =
  let a = Fun ("x", App (Var "f", App (Var "x", Var "x"))) in
  Fun ("f", App (a, a))

(* Compiler *)
(* The compiler will convert a MicrOCaml program into a semantically
   equivalent NanOCaml program. You have to implement most of these
   cases. *)

let rec compiler (e : uexpr) : expr = 
  match e with
    UFun (x, b) -> failwith "unimplemented"
  | UApp (t1, t2) -> failwith "unimplemented"
  | UVar x -> failwith "unimplemented"
  | UBool x -> failwith "unimplemented"
  | UNat x -> failwith "unimplemented"
  | UEq (t1, t2) -> App (App (eq, compiler t1), compiler t2)
  | UPlus (t1, t2) -> App (App (add, compiler t1), compiler t2)
  | USub (t1, t2) -> App (App (sub, compiler t1), compiler t2)
  | ULet (x, y, z) -> failwith "unimplemented"
  | ULetRec (x, y, z) -> failwith "unimplemented"
  | UIf (x, y, z) -> failwith "unimplemented"
