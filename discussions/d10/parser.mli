type var = string
type expr =
  Fun of var * expr
| App of expr * expr
| Var of var

val parser : Lexer.token list -> expr
val string_of_expr : expr -> string
