(* Motivating Options
    t list vs t options
    they are different types
 *)

 (* building:

    NONE has a type 'a option (much like [] has type 'a list)
    SOME e has type t option if e has type t (much like e::[])

 Accesing:

    isSome has type 'a option -> bool
    valOf has type 'a option -> 'a (exception if given NONE)

  *)

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

(* fn : int list -> int option *)

fun max1 (xs: int list) =
    if null xs 
    then NONE
    else 
        let val tl_ans = max1(tl xs)
        in if isSome tl_ans andalso valOf tl_ans > hd xs
        then tl_ans
        else SOME (hd xs)
        end

(* 
    in order to add to an option 

    ((val of (max1 [3,7,5]))) + 1

 *)

fun max2 (xs : int list) =

    if null xs
    then NONE
    else let
        fun max_nonempty(xs : int list) =
        if null (tl xs) (* xs better not be []*)
        then hd xs
        else let val tl_ans = max_nonempty(t1 xs)
            in  
                if hd xs > tl_ans
                then hd xs
                else tl_ans
            end 
        in 
            Some (max_nonempty xs)
        end



