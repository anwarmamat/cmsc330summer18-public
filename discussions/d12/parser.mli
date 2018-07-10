
(* The type of tokens. *)

type token = 
  | Tok_Var of (string)
  | Tok_Then
  | Tok_Sub
  | Tok_Rec
  | Tok_RParen
  | Tok_Plus
  | Tok_Nat of (int)
  | Tok_Let
  | Tok_LParen
  | Tok_In
  | Tok_If
  | Tok_Fun
  | Tok_Eq
  | Tok_Else
  | Tok_EOF
  | Tok_Bool of (bool)
  | Tok_Arrow

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.uexpr)
