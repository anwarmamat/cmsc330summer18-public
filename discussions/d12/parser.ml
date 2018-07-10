
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | Tok_Var of (
# 4 "parser.mly"
       (string)
# 11 "parser.ml"
  )
    | Tok_Then
    | Tok_Sub
    | Tok_Rec
    | Tok_RParen
    | Tok_Plus
    | Tok_Nat of (
# 5 "parser.mly"
       (int)
# 21 "parser.ml"
  )
    | Tok_Let
    | Tok_LParen
    | Tok_In
    | Tok_If
    | Tok_Fun
    | Tok_Eq
    | Tok_Else
    | Tok_EOF
    | Tok_Bool of (
# 6 "parser.mly"
       (bool)
# 34 "parser.ml"
  )
    | Tok_Arrow
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState47
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState10
  | MenhirState7
  | MenhirState6
  | MenhirState5
  | MenhirState0

# 1 "parser.mly"
  
open Ast

# 85 "parser.ml"

let rec _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Bool _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | Tok_Fun ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | Tok_If ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | Tok_LParen ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | Tok_Let ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | Tok_Nat _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | Tok_Var _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Bool _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | Tok_Fun ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | Tok_If ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | Tok_LParen ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | Tok_Let ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | Tok_Nat _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | Tok_Var _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Bool _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Tok_Fun ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | Tok_If ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | Tok_LParen ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | Tok_Let ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | Tok_Nat _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Tok_Var _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_reduce16 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (a : 'tv_atom)) = _menhir_stack in
    let _v : 'tv_expr = 
# 36 "parser.mly"
      ( a )
# 168 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 181 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | Tok_EOF | Tok_Else | Tok_In | Tok_RParen | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv119 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 211 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 4 "parser.mly"
       (string)
# 216 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_funs = 
# 87 "parser.mly"
      ( UFun(x, e) )
# 223 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_funs) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_funs) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((f : 'tv_funs) : 'tv_funs) = _v in
            ((let _v : 'tv_atom = 
# 54 "parser.mly"
      ( f )
# 240 "parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)) : 'freshtv118)) : 'freshtv120)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv122)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | Tok_EOF | Tok_Else | Tok_Eq | Tok_In | Tok_Plus | Tok_RParen | Tok_Sub | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : 'tv_expr)), _), _, (y : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_arith = 
# 73 "parser.mly"
       ( USub(x, y) )
# 275 "parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv126)
    | MenhirState47 | MenhirState43 | MenhirState45 | MenhirState37 | MenhirState39 | MenhirState35 | MenhirState30 | MenhirState32 | MenhirState34 | MenhirState16 | MenhirState19 | MenhirState29 | MenhirState21 | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv128)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | Tok_EOF | Tok_Else | Tok_Eq | Tok_In | Tok_Plus | Tok_RParen | Tok_Sub | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : 'tv_expr)), _), _, (y : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_arith = 
# 71 "parser.mly"
       ( UPlus(x, y) )
# 340 "parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv132)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | Tok_EOF | Tok_Else | Tok_Eq | Tok_In | Tok_RParen | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_comp = 
# 67 "parser.mly"
      ( UEq(e1, e2) )
# 379 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comp) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comp) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_comp) : 'tv_comp) = _v in
            ((let _v : 'tv_atom = 
# 44 "parser.mly"
      ( c )
# 396 "parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)) : 'freshtv136)) : 'freshtv138)) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv142)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv143 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState30 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Tok_Bool _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | Tok_Fun ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | Tok_If ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | Tok_LParen ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | Tok_Let ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | Tok_Nat _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | Tok_Var _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv144)
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv146)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv149 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | Tok_Else ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv147 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState32 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Tok_Bool _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | Tok_Fun ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | Tok_If ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | Tok_LParen ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | Tok_Let ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | Tok_Nat _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | Tok_Var _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv148)
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv150)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv159 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | Tok_EOF | Tok_Else | Tok_In | Tok_RParen | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv157 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (g : 'tv_expr)), _), _, (t : 'tv_expr)), _), _, (f : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_cond = 
# 84 "parser.mly"
      ( UIf(g, t, f) )
# 551 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_cond) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_cond) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_cond) : 'tv_cond) = _v in
            ((let _v : 'tv_atom = 
# 52 "parser.mly"
      ( c )
# 568 "parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)) : 'freshtv156)) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv160)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | Tok_RParen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState35 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_atom = 
# 58 "parser.mly"
      ( e )
# 611 "parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv166)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv169 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 627 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | Tok_In ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv167 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 645 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState37 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Tok_Bool _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | Tok_Fun ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | Tok_If ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | Tok_LParen ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | Tok_Let ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | Tok_Nat _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | Tok_Var _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv168)
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv170)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv179 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 691 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | Tok_EOF | Tok_Else | Tok_In | Tok_RParen | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv177 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 721 "parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 4 "parser.mly"
       (string)
# 726 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_lets = 
# 81 "parser.mly"
      ( ULet(x, e1, e2) )
# 734 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_lets) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_lets) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((l : 'tv_lets) : 'tv_lets) = _v in
            ((let _v : 'tv_atom = 
# 50 "parser.mly"
      ( l )
# 751 "parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)) : 'freshtv176)) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv180)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv183 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 763 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | Tok_In ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv181 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 781 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState43 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Tok_Bool _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | Tok_Fun ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | Tok_If ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | Tok_LParen ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | Tok_Let ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | Tok_Nat _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | Tok_Var _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv182)
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv184)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv193 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 827 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | Tok_EOF | Tok_Else | Tok_In | Tok_RParen | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv191 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 857 "parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 4 "parser.mly"
       (string)
# 862 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_letrec = 
# 78 "parser.mly"
        ( ULetRec(x, e1, e2) )
# 871 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv189) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_letrec) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_letrec) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((l : 'tv_letrec) : 'tv_letrec) = _v in
            ((let _v : 'tv_atom = 
# 48 "parser.mly"
      ( l )
# 888 "parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv194)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Bool _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | Tok_EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState47 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 28 "parser.mly"
       (Ast.uexpr)
# 915 "parser.ml"
            ) = 
# 32 "parser.mly"
      ( e )
# 919 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
       (Ast.uexpr)
# 927 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
       (Ast.uexpr)
# 935 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 28 "parser.mly"
       (Ast.uexpr)
# 943 "parser.ml"
            )) : (
# 28 "parser.mly"
       (Ast.uexpr)
# 947 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv196)) : 'freshtv198)) : 'freshtv200)) : 'freshtv202)) : 'freshtv204)
        | Tok_Eq ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | Tok_Fun ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | Tok_If ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | Tok_LParen ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | Tok_Let ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | Tok_Nat _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | Tok_Plus ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | Tok_Sub ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | Tok_Var _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv206)

and _menhir_goto_arith : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_arith -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_arith) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((a : 'tv_arith) : 'tv_arith) = _v in
    ((let _v : 'tv_atom = 
# 46 "parser.mly"
      ( a )
# 986 "parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)) : 'freshtv112)

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 | MenhirState43 | MenhirState45 | MenhirState37 | MenhirState39 | MenhirState35 | MenhirState30 | MenhirState32 | MenhirState34 | MenhirState16 | MenhirState18 | MenhirState19 | MenhirState29 | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_EOF | Tok_Else | Tok_In | Tok_RParen | Tok_Then ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_expr = 
# 38 "parser.mly"
      ( UApp(e1, e2) )
# 1007 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)
        | Tok_Bool _ | Tok_Eq | Tok_Fun | Tok_If | Tok_LParen | Tok_Let | Tok_Nat _ | Tok_Plus | Tok_Sub | Tok_Var _ ->
            _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
    | MenhirState0 | MenhirState42 | MenhirState44 | MenhirState5 | MenhirState38 | MenhirState6 | MenhirState7 | MenhirState31 | MenhirState33 | MenhirState10 | MenhirState17 | MenhirState28 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        (_menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) : 'freshtv108)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv49 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 1037 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv51 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 1046 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv53 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 1055 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 1064 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv57 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1073 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv59 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1082 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv61 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1091 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv65 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv67 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv89 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1165 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1174 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1193 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv100)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 1205 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 4 "parser.mly"
       (string)
# 1215 "parser.ml"
    )) : (
# 4 "parser.mly"
       (string)
# 1219 "parser.ml"
    )) = _v in
    ((let _v : 'tv_var = 
# 61 "parser.mly"
     ( UVar v )
# 1224 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv43) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_var) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_var) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : 'tv_var) : 'tv_var) = _v in
    ((let _v : 'tv_atom = 
# 56 "parser.mly"
      ( v )
# 1241 "parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)) : 'freshtv44)) : 'freshtv46)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (int)
# 1248 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 5 "parser.mly"
       (int)
# 1258 "parser.ml"
    )) : (
# 5 "parser.mly"
       (int)
# 1262 "parser.ml"
    )) = _v in
    ((let _v : 'tv_arith = 
# 75 "parser.mly"
       ( UNat x )
# 1267 "parser.ml"
     in
    _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Rec ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Var _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv23 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 4 "parser.mly"
       (string)
# 1289 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Tok_Eq ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv19 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 1300 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | Tok_Bool _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
                | Tok_Fun ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | Tok_If ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | Tok_LParen ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | Tok_Let ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | Tok_Nat _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
                | Tok_Var _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv20)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv21 * _menhir_state)) * (
# 4 "parser.mly"
       (string)
# 1330 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)) : 'freshtv24)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv25 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)) : 'freshtv28)
    | Tok_Var _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 4 "parser.mly"
       (string)
# 1347 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Eq ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1358 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Tok_Bool _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | Tok_Fun ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | Tok_If ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | Tok_LParen ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | Tok_Let ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | Tok_Nat _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | Tok_Var _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv30)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1388 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Bool _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Tok_Fun ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | Tok_If ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | Tok_LParen ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | Tok_Let ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | Tok_Nat _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Tok_Var _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Bool _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Tok_Fun ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | Tok_If ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | Tok_LParen ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | Tok_Let ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | Tok_Nat _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Tok_Var _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Var _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 4 "parser.mly"
       (string)
# 1462 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Tok_Arrow ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1473 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Tok_Bool _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | Tok_Fun ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | Tok_If ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | Tok_LParen ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | Tok_Let ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | Tok_Nat _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | Tok_Var _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv12)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state) * (
# 4 "parser.mly"
       (string)
# 1503 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (bool)
# 1518 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 6 "parser.mly"
       (bool)
# 1528 "parser.ml"
    )) : (
# 6 "parser.mly"
       (bool)
# 1532 "parser.ml"
    )) = _v in
    ((let _v : 'tv_bool = 
# 64 "parser.mly"
      ( UBool b )
# 1537 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_bool) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_bool) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : 'tv_bool) : 'tv_bool) = _v in
    ((let _v : 'tv_atom = 
# 42 "parser.mly"
      ( b )
# 1554 "parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)) : 'freshtv6)) : 'freshtv8)) : 'freshtv10)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 28 "parser.mly"
       (Ast.uexpr)
# 1573 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Tok_Bool _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Tok_Fun ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Tok_If ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Tok_LParen ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Tok_Let ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Tok_Nat _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Tok_Var _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 219 "/home/camoy/.opam/system/lib/menhir/standard.mly"
  


# 1615 "parser.ml"
