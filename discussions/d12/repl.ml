open Ast
open Compiler

(* Interpreter *)

let interpreter evaler x =
  let lexbuf = Lexing.from_string x in
  (Parser.main Lexer.read lexbuf) |> compiler |> evaler |> string_of_normal

(* Main *)

let rec main () =
  output_string stdout "> ";
  flush stdout;
  let repl_in = (input_line stdin) in
  output_string stdout "[Compiled] ";
  repl_in |> (interpreter (fun x -> x)) |> (output_string stdout);
  output_string stdout "\n";
  output_string stdout "[Normalized] ";
  repl_in |> (interpreter normalize) |> (output_string stdout);
  output_string stdout "\n";
  flush stdout;
  cntr := 0;
  main ()

let () = main ()
