(* SYNTAX TEST "Packages/WolframLanguage/WolframLanguage.sublime-syntax" *)

(*
  For information on how this file is used, see
  https://www.sublimetext.com/docs/3/syntax.html#testing
  Run tests by pressing `ctrl+shift+b`, i.e. run the `build` command
*)

(* NUMBERS *)

   11
(* ^^ constant.numeric *)
   .11
(* ^^^ constant.numeric *)
   11.
(* ^^^ constant.numeric *)
   11.11
(* ^^^^^ constant.numeric *)


  f[x]
(*^ variable.function*)

  f[x_] := 2x
(*^ entity.name.function*)
(*  ^^ variable.parameter*)
(*      ^^ keyword.operator*)

  f[x_, OptionsPattern[]] := 2x
(*^ entity.name.function*)
(*  ^^ variable.parameter*)
(*      ^^^^^^^^^^^^^^ variable.function*)
(*                        ^^ keyword.operator*)




  foo[[1]]

  StringMatchQ[IgnoreCase -> Automatic, foo -> bar]

  foo["bar",  baz_] :=


