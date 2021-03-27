(* A valuable non feature: no mutation

no way to subsequential change data must make new data

Mutation

No code can ever distinguish aliasing vs identical copies
no need to think about aliasing: focus on other things
can use aliasing which saves space without danger

*)

fun append(xs: int list, ys: int list) = 

    if null xs
    then ys
    else hd xs :: append (tl(xs), ys)

    val x = [2,4]
    val y = [5,3,0]
    val z = append(x,y)

(* having mutable data is a security breach,

considering returning copies of data instead of references

 *)
