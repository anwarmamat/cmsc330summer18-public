(* This is an OCaml adaptation of (Y Y) Works! by Felleisen
   and Friedman. An updated version of the same essay is
   available in the Little Schemer, Chapter 9. To run the
   examples you have to enable the -rectypes flag. *)

(* Let's define the length function. *)

let rec length xs =
  match xs with
  | [] -> 0
  | x::xt -> 1 + (length xt)

(* What if we don't have let rec? What can we do then? *)

let ohnoes _ = failwith "ohnoes!"
let length0 xs =
    match xs with
  | [] -> 0
  | x::xt -> 1 + (ohnoes xt)

(* This works on empty lists. What about non-empty lists? *)

let length1 xs =
    match xs with
  | [] -> 0
  | x::xt -> 1 + (length0 xt)

(* That one works on lists of length less than or equal to
   one. What about less than or equal to two? *)

let length2 xs =
    match xs with
  | [] -> 0
  | x::xt -> 1 + (length1 xt)

(* So, how could we write the length function? *)

let length xs =
    match xs with
  | [] -> 0
  | x::xt -> 1 + (fun xs ->
      match xs with
    | [] -> 0
    | x::xt -> 1 + (fun xs ->
        match xs with
      | [] -> 0
      | x::xt -> 1 + (fun xs ->
         ...)))

(* Of course, we can't write an infinite function.
   What else can we do? Well, let's try to abstract
   out those finite length functions. They're
   mostly the same. We can parameterize. *)

let mk_length length xs =
    match xs with
  | [] -> 0
  | x::xt -> 1 + (length xt)

let length0 = mk_length ohnoes
let length1 = mk_length (mk_length ohnoes)
let length2 = mk_length (mk_length (mk_length ohnoes))
let length3 = mk_length (mk_length (mk_length (mk_length ohnoes)))

(* So how would we get length? *)

let length = mk_length (mk_length (...))

(* Another infinite tower... How does the help?
   Well, what if we could generate a new mk_length call
   right when we need it? If our length function was
   mk_length we could... *)

let mk_length mk_length' xs =
    match xs with
  | [] -> 0
  | x::xt -> 1 + (mk_length' xt)

let length = mk_length mk_length

(* A type error! mk_length' doesn't take just a list,
   it also takes in a mk_length function. We have to
   pass in mk_length' again then. *)

let mk_length mk_length' xs =
    match xs with
  | [] -> 0
  | x::xt -> 1 + (mk_length' mk_length' xt)

let length = mk_length mk_length

(* This works! Great, let's start abstracting this
   further. We want a general utility to make anything
   a recursive function. We need to take out all
   the length specific stuff. *)

let mk_f mk_f f x =
    f mk_f x

let length = mk_f mk_f (fun mk_length xs ->
    match xs with
  | [] -> 0
  | x::xt -> 1 + (mk_length mk_length xt))

(* This won't work. Once again, we've abstracted out
   but haven't changed. We need to pass in our f.
   But we don't have it since we're inside of it.
   But mk_f has it! Let's let mk_f it. *)

let mk_f mk_f f x =
    f (mk_f mk_f f) x

let length = mk_f mk_f (fun length xs ->
    match xs with
  | [] -> 0
  | x::xt -> 1 + (length xt))

(* Notice our length function now is defined to
   take in another length function already. This is
   called open recursive style. *)

(* It compiled, but we get a stack overflow. Why?
   Well since we're CBV we always evaluate the
   (mk_f mk_f) even if we don't need it. This is an
   infinite loop. We have to delay that computation
   until it's needed. *)

(* The technical term for the transformation we're
   going to do is an eta-expansion. *)

let mk_f mk_f f x =
    f (fun x -> mk_f mk_f f x) x

let length = mk_f mk_f (fun length xs ->
    match xs with
  | [] -> 0
  | x::xt -> 1 + (length xt))

(* This works. A few small details though. We can
   eta-reduce (the reverse of the above operation)
   mk_f. *)

let mk_f mk_f f =
    f (fun x -> mk_f mk_f f x)

let length = mk_f mk_f (fun length xs ->
    match xs with
  | [] -> 0
  | x::xt -> 1 + (length xt))

(* And it's slightly awkward to refer to mk_f mk_f
   when trying to get our recursive length function.
   Let's call it z. *)

let z = mk_f mk_f

(* And by definition... *)

let z = (fun mk_f f -> f (fun x -> mk_f mk_f f x))
        (fun mk_f f -> f (fun x -> mk_f mk_f f x))

(* We can parameterize z by f and get rid of
   some arguments. *)

let z f = (fun mk_f -> f (fun x -> mk_f mk_f x))
          (fun mk_f -> f (fun x -> mk_f mk_f x))

(* And done. This is the fixpoint combinator for
   strict languages. *)

let length = z (fun length xs ->
    match xs with
  | [] -> 0
  | x::xt -> 1 + (length xt))

(* Take a bow! *)
