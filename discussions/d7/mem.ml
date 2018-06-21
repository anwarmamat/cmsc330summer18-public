type ('k, 'v) dict = ('k * 'v) list ref

(* Returns a new empty dictionary *)
let empty () : ('k, 'v) dict = ref []

(* Creates a key-value pair association in the dictionary
   and returns the value. *)
let set (d : ('k, 'v) dict) (k : 'k) (v : 'v) : 'v =
  failwith "unimplemented"

(* Returns the value associated with a key (as an option) *)
let get (d : ('k, 'v) dict) (k : 'k) : 'v option =
  failwith "unimplemented"

(* Computes fibonacci regularly as a recursive function *)
let rec fib_reg (n : int) : int =
  failwith "unimplemented"

(* Computes fibonacci with memoization *)
let fib_mem =
  "unimplemented"

(* Returns a memoized version of the given unary function *)
let memoizer (f : ('a -> 'b)) : ('a -> 'b) =
  failwith "unimplemented"

(* Computes fibonacci (given a recursive fibonacci reference) *)
let mk_fib (fib : int -> int) : (int -> int) =
  failwith "unimplemented"

(* Computes fibonacci recursively without memoization using mk_fib *)
let rec fib_slow (n : int) : int =
  (mk_fib fib_slow) n

(* Computes fibonacci recursively with memoization *)
(* let fib_fast =
  memoizer fib_reg *)
