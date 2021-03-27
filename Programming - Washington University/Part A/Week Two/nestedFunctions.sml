(* Define functions is another functions 

    any bindings used in the language

*)

(* helper *)

(* fun count (from: int, to : int) =

    if from = to
    then to::[]
    else from :: count(from + 1 , to) *)

(* 

fun count_from1(x: int, to : int) =
count(1,x)

 *)


(*  expression functions*)
fun countup_from1(x: int)=
    let
        fun count (from: int) =

        if from = x
        then to::[]
        else from :: count(from + 1)
    in 
        count(1)
    end

(*  *)