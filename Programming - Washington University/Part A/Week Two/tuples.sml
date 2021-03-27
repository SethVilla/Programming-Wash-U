(* tuples fixed number of pieces that may have different types *)

(* forms of compound data *)


(* Pairs have two parts

we need to be able to build pairs and access pairs *)

fun swap (pr : int * bool) = 
(#2 pr, #1 pr )

(* (int * int) * (int * int) -> int *)
fun sum_to_pairs(pr1 : int * int, pr2 : int * int) = 
(#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

(* int * int -> int * int *)
fun div_mod (x : int, y : int) =
(x div y, x mod y)

fun sort_pair (pr: int * int) = 
if (#1 pr) < (#2 pr)
then pr
else (#2 pr, #1 pr)

(* tuple nesting *)

val x1 = (7, (true,9)) (* int * (bool * int) *)

val x2 = #1 (#2 x1) (* bool *)

val x3 = (#2 x1) (* bool * int *)

val x4 = ((3,5), ((4,8), (0,0))) (* (int * int) * ((int * int) * (int * int))*)



