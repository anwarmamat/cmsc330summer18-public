# More Good Ol' Guess and Check
Ungraded

## Introduction

Find a friend (or two) and go through each of these OCaml expressions. Answer
the following questions about each one:

1. Is this a well-formed (i.e. syntactically correct) expression?
2. If so, is it well-typed? What is its type? If it isn't well-typed, what
   type error will OCaml throw?
3. If it's well-typed, what does it evaluate to?

Upon disagreement, try to convince the other that you're right. Then run
in the OCaml top-level and see if you were correct. If you weren't, try
to figure out where your reasoning went wrong.

## Lets

* `let x = 10 in "x"`
* `let x = 10 in let y = 12 in x + y`
* `let 99x = 10 in 99x`
* `let x = let y = 100 in y in let z = x in z`
* `let x = "hi" in let x = 20 in x`
* `(let x = 10 in x) + (let y = 12 in y)`
* `let "x" = "x" in "x"`
* `let "x" = "y" in "x"`
* `let x = 1 in let x = x + 1 in let x = x + 1 in x`
* `let x = x in let x = x + 1 in let x = x + 1 in x`

## Tuples

* `(1, 2)`
* `(1, "hello", world)`
* `()`
* `(1, 2)::(4, 5)`
* `let (x, y) = ("hello", "world") in x ^ " " ^ y`
* `let (x) = ("hi") in x`
* `let (x, y) = ("a", "b", "c") in x`
* `let ((x, y), h::t, _) = (("a", "b"), ["c"], 100) in x ^ y ^ h`

## Functions

* `let f y = fun z -> z+1 in f 1`
* `let f y = fun z -> z+1 in f 1 1`
* `let f y = fun z -> x+1 in f 1`
* `let rec f y = fun z -> x+y in f 1`
* `let rec f y = fun z -> f z in f 1`
* `let rec f = fun y -> f y`
* ```
  let rec f (g, l1, l2) =
  match l1 with
    [] -> []
  | (h1::t1) ->
    match l2 with
      [] -> [g h1]
    | (h2::t2) -> [g h1; g h2]
  ```
