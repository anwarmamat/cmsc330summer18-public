
(*
  name: fact
  type: int -> int
  desc: Returns the factorial of n.
  e.g.: fact 5 -> 120
*)

let rec fact n = if n = 0 then 1 else n * fact (n - 1)
;;

(*
  name: fact_tr
  type: int -> int
  desc: Returns the factorial of n. Write a tail-recursive solution. (The
        tests test fact_tr_aux, so don't rename or change the type of that
        function.)
  e.g.: fact_tr 5 -> 120
*)

let rec fact_tr_aux acc n = if n = 0 then acc else fact_tr_aux (n * acc) (n - 1)
;;

let fact_tr n = fact_tr_aux 1 n;;

(*
  name: unary
  type: int -> string
  desc: Returns an unary representation of n. Assume that n is not negative.
  e.g.: unary 0 -> ""
        unary 1 -> "1"
        unary 2 -> "11"
        unary 7 -> "1111111"
*)

let rec unary n = if n = 0 then "" else unary (n - 1) ^ "1"
;;

(*
  name: sum_digits
  type: int -> int
  desc: Returns the sum of the digits of n.
  e.g.: sum_digits 120 -> 3
*)

let rec sum_digits n = if n = 0 then 0 else (n mod 10) + sum_digits (n / 10)
;;

(* failwith "unimplemented" *)

(*
  name: binary
  type: int -> string
  desc: Returns a binary representation of n. Assume that n is not negative.
  e.g.: binary 0 -> ""
        binary 1 -> "1"
        binary 2 -> "10"
        binary 7 -> "111"
*)

let rec binary n =
  if n = 0 then
    ""
  else
    if (n mod 2) = 0 then
      binary (n / 2) ^ "0"
    else
      binary (n / 2) ^ "1"
;;

