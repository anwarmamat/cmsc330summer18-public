# Discussion 12: μOCaml Compiler

Due: Tuesday July 10th at 11:59:59PM

Points: 50P/50R/0S

## Introduction

Last week we implemented NanOCaml. Today we learned that NanOCaml is really
just the CBV lambda calculus. That means NanOCaml is Turing complete, so we can
compute really anything in it. Let's not just talk to the talk, let's see
how we can do some actually useful computation.

A compiler translates high-level code into a lower-level representation.
For example, `gcc` will convert C code into native machine code. We're
going to write a compiler that converts higher-level μOCaml to lower-level
NanOCaml. In other words, the μOCaml language is just syntactic sugar
over NanOCaml. The compiler de-sugars the language so it can be run.

We've provided a lexer and parser for μOCaml. Instead of providing a
grammar, here are a few examples. You should get the gist.

```ml
let x = 100 in let y = 200 in 100 + 200
```

These are normal let bindings that should yield `300`.

```ml
let rec mult = fun m -> fun n -> if m = 0 then 0 else n + ((mult (m-1)) n) in ((mult 5) 5)
```

Here we're defining a recursive multiplication function. In this example
we're computing `5 * 5` so the result is `25`. A couple quirks:

1. There's no currying so if you want a multi-argument function you need
   to write it explicitly.
2. Function applications must be surrounded by parentheses explicitly (in
   regular OCaml it's left associative, but here it's not assumed).

## The compiler

Your compiler will convert μOCaml terms of the type `uexpr` to NanOCaml
terms of the type `expr`. We've started the work, but you have to finish.
You will use the usual Church encoding of numerals and booleans.

## The REPL

You can write programs in μOCaml and they will be compiled into NanOCaml
(using your compiler) and run through our NanOCaml evaluator. Provided is an
interface to the language in `./repl`.

Try the examples above. You should get the correct results.
