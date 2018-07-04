open Lexer
open Parser
open Evaler

let interpreter evaler x =
  try x |> lexer |> parser |> evaler |> string_of_expr
  with _ -> "term does not evaluate"

let rec main () =
  output_string stdout "> ";
  flush stdout;
  let repl_in = (input_line stdin) in
  output_string stdout "[Substitution] ";
  repl_in |> (interpreter evaler_s) |> (output_string stdout);
  output_string stdout "\n";
  output_string stdout "[Environment] ";
  repl_in |> (interpreter evaler_e) |> (output_string stdout);
  output_string stdout "\n";
  flush stdout;
  main ()

let () = main ()
