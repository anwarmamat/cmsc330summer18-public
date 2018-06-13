# The Ol' Guess and Check
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

## Lists

* `[1; 2; 3]`
* `[1.0; 2.0; 3]`
* `[[]; ["hello"]; []]`
* `0::[]`
* `0::[1; 2; 3]`
* `[1; 2]::[3; 4]`
* `[1; 2]::3`
* `[]@[1;2]@[5]`
* `0@[1; 2; 3]`

## Conditionals

* `if 1 = 1 then true`
* `if 1 = 1 then true else false`
* `(if 1 = 1 then true else false) = (1 = 1)`
* `if 1 = 1 then "abc" else 123`
* `if 1 = 1 then if 1 = 2 then "hi" else "no" else "yes"`
* `(if true then 1 else 0) + (if false then 0 else 1)`

## Matching

* ```
  match [] with
    h::t -> 0
  | [] -> 1
  ```
* ```
  match [] with
    h::t -> 0
  | [] -> "a"
  ```
* ```
  match [] with
    h::t -> 0
  ```
* ```
  match [] with
    [] -> 1
  ```
* ```
  match "a" with
    "a" -> 0
  | _ -> 1
  ```
* ```
  match (["a";"b"], ["a";"c"]) with
    (h::h2::_, h'::h3::_) when h = h' -> [h2; h3]
  | _ -> []
  ```
* ```
  (match 0 with
     0 -> 100
   | _ -> 5
  ) * (match 1 with
     0 -> 100
   | _ -> 5)
  ```
