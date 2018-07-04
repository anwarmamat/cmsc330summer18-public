type token =
    Tok_Fun
  | Tok_Var of string
  | Tok_Arrow
  | Tok_LParen
  | Tok_RParen
  | Tok_EOF

val lexer : string -> token list
val string_of_tokens : token list -> string
