
(* section 1 : Let expressions to avoid repeated Computation*)

(* badly named: evaluates to 0 on empty list *)

fun bad_max (xs : int list) = 
    if null xs
    then 0
    else if null (tl xs)
    then hd xs
    else if hd xs > bad_max(tl xs)
    then hd xs
    else bad_max(tl xs)

(* return [from, from + 1], ...., t] *)

fun countup(from: int, to : int) =
    if from = to
    then to::[]
    else from :: countup(from+1, to)

(* [from, from + 1], ...., t]  *)
fun countdown(from: int, to : int) =
if from = to
then to::[]
else from :: countdown(from-1,to)


(*  *)
fun good_max(xs : int list) =
    if null xs
    then 0
    else if null (tl xs)
    then hd xs
    else 
        (* for style could also use a let binding for (hd xs) remember the list *)
        let val tl_ans = good_max(tl xs)
        in 
            if hd xs > tl_ans
            then hd xs
            else tl_ans
        end


