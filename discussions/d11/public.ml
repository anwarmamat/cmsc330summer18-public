open OUnit2
open Parser
open Evaler

(* ASTs *)

let fun_zoo_ast = Fun ("zoo", Var "zoo")
let fun_nested_ast = Fun ("x", Fun ("zoo", Var "x"))
let app_id_ast = App (Fun ("x", Var "x"), Fun ("x", Var "x"))
let app_id_y_ast = App (Fun ("x", Var "x"), Fun ("y", Var "y"))
let app_under_ast = App (Fun ("x", Fun ("x", Var "x")), Fun ("y", Var "y"))
let app_dbl_ast = App (Fun ("x", App (Var "x", Var "x")),
                       Fun ("y", Var "y"))

(* Values *)

let fun_zoo_val = Fun ("zoo", Var "zoo")
let fun_nested_val = Fun ("x", Fun ("zoo", Var "x"))
let app_id_val = Fun ("x", Var "x")
let app_id_y_val = Fun ("y", Var "y")
let app_under_val = Fun ("x", Var "x")
let app_dbl_val = Fun ("y", Var "y")

(* Tests *)

let test_evaler_s ctxt =
  assert_equal fun_zoo_val (fun_zoo_ast |> evaler_s);
  assert_equal fun_nested_val (fun_nested_ast |> evaler_s);
  assert_equal app_id_val (app_id_ast |> evaler_s);
  assert_equal app_id_y_val (app_id_y_ast |> evaler_s);
  assert_equal app_under_val (app_under_ast |> evaler_s);
  assert_equal app_dbl_val (app_dbl_ast |> evaler_s)

let test_evaler_e ctxt =
  assert_equal fun_zoo_val (fun_zoo_ast |> evaler_e);
  assert_equal fun_nested_val (fun_nested_ast |> evaler_e);
  assert_equal app_id_val (app_id_ast |> evaler_e);
  assert_equal app_id_y_val (app_id_y_ast |> evaler_e);
  assert_equal app_under_val (app_under_ast |> evaler_e);
  assert_equal app_dbl_val (app_dbl_ast |> evaler_e)

let suite =
  "public" >::: [
    "evaler_s" >:: test_evaler_s;
    "evaler_e" >:: test_evaler_e
  ]

let _ = run_test_tt_main suite
