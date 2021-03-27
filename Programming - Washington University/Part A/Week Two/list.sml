(* Lists can have any number of data, but all lists elements have the same type *)

(* empty list [] *)

val it = []

val x = [1,2,3]

(* generate list with Constructor and add to begining *)

5::x1

6::5::x

(* add to a list of integers *)

[6]::[[7,5], [5,2]]

(* Accessing Lists first use null function to check if list is empty

null returns true if empty

 *)

null x;

(* Get head of list first node *)

hd x;

(* get tail of x all nodes after head *)

tl x;

(* get the head of the tail *)

hd (tl, x)

(* get the tail of the tail *)

tl (tl, x)

(* get the tail of the tails , tail , returns empty list in our example*)

tl(tl (tl, x))

(* type of empty list alpha *)