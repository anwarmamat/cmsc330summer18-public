# Discussion 11: NanOCaml Semantics
Due: Thursday July 5th at 11:59:59PM

Points: 50P/50R/0S

## Introduction
We are implementing a stripped down version of OCaml called NanOCaml.
Today, we will focus only on the semantics of NanOCaml, in other words
writing the evaluator. You are expected to implement both styles of
semantics in the `evaler_s` and `evaler_e'` functions.

The `evaler_s` follows the substitution semantics from Figure 1 of the
notes. You will need to write the auxiliary `subst` function to help you.

The other function you must write, `evaler_e'` uses the environment semantics
from Figure 2 of the notes. We've already written `evaler_e` that simply
calls this function and extracts the body from the resulting closure. You may
find the `List.assoc_opt` function helpful for looking things up in your environment.

Note, it should be the case that `evaler_s(t) = evaler_e(t)` for all terms `t`.
Also, our semantics define a partial function (i.e. not all inputs have
an output).  **If a term does not evaluate under our semantics, your must raise
a runtime error (any will do).** For example, attempting to evaluate an
unbound variable or apply something other than a function would yield an
error.

## The REPL

Once you've written the evaluator, our language pipeline will be complete.
You can write programs in your language and run them! Provided is an
interface to your language `./repl`. Be sure to import the lexer and parser
from last discussion to use this.

As a challenge, try to discover a term in your language that doesn't terminate.
You can also extend NanOCaml to implement more and more features of real
OCaml. Or you can come up with your own unique language features!
