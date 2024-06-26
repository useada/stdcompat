type 'a t = 'a list =
  | [] 
  | (::) of 'a * 'a list 
val length : 'a list -> int
val compare_lengths : 'a list -> 'b list -> int
val compare_length_with : 'a list -> len:int -> int
val is_empty : 'a list -> bool
val cons : 'a -> 'a list -> 'a list
val hd : 'a list -> 'a
val tl : 'a list -> 'a list
val nth : 'a list -> int -> 'a
val nth_opt : 'a list -> int -> 'a option
val rev : 'a list -> 'a list
val init : len:int -> f:(int -> 'a) -> 'a list
val append : 'a list -> 'a list -> 'a list
val rev_append : 'a list -> 'a list -> 'a list
val concat : 'a list list -> 'a list
val flatten : 'a list list -> 'a list
val equal : eq:('a -> 'a -> bool) -> 'a list -> 'a list -> bool
val compare : cmp:('a -> 'a -> int) -> 'a list -> 'a list -> int
val iter : f:('a -> unit) -> 'a list -> unit
val iteri : f:(int -> 'a -> unit) -> 'a list -> unit
val map : f:('a -> 'b) -> 'a list -> 'b list
val mapi : f:(int -> 'a -> 'b) -> 'a list -> 'b list
val rev_map : f:('a -> 'b) -> 'a list -> 'b list
val filter_map : f:('a -> 'b option) -> 'a list -> 'b list
val concat_map : f:('a -> 'b list) -> 'a list -> 'b list
val fold_left_map :
  f:('acc -> 'a -> ('acc * 'b)) -> init:'acc -> 'a list -> ('acc * 'b list)
val fold_left : f:('acc -> 'a -> 'acc) -> init:'acc -> 'a list -> 'acc
val fold_right : f:('a -> 'acc -> 'acc) -> 'a list -> init:'acc -> 'acc
val iter2 : f:('a -> 'b -> unit) -> 'a list -> 'b list -> unit
val map2 : f:('a -> 'b -> 'c) -> 'a list -> 'b list -> 'c list
val rev_map2 : f:('a -> 'b -> 'c) -> 'a list -> 'b list -> 'c list
val fold_left2 :
  f:('acc -> 'a -> 'b -> 'acc) -> init:'acc -> 'a list -> 'b list -> 'acc
val fold_right2 :
  f:('a -> 'b -> 'acc -> 'acc) -> 'a list -> 'b list -> init:'acc -> 'acc
val for_all : f:('a -> bool) -> 'a list -> bool
val exists : f:('a -> bool) -> 'a list -> bool
val for_all2 : f:('a -> 'b -> bool) -> 'a list -> 'b list -> bool
val exists2 : f:('a -> 'b -> bool) -> 'a list -> 'b list -> bool
val mem : 'a -> set:'a list -> bool
val memq : 'a -> set:'a list -> bool
val find : f:('a -> bool) -> 'a list -> 'a
val find_opt : f:('a -> bool) -> 'a list -> 'a option
val find_index : f:('a -> bool) -> 'a list -> int option
val find_map : f:('a -> 'b option) -> 'a list -> 'b option
val find_mapi : f:(int -> 'a -> 'b option) -> 'a list -> 'b option
val filter : f:('a -> bool) -> 'a list -> 'a list
val find_all : f:('a -> bool) -> 'a list -> 'a list
val filteri : f:(int -> 'a -> bool) -> 'a list -> 'a list
val partition : f:('a -> bool) -> 'a list -> ('a list * 'a list)
val partition_map :
  f:('a -> ('b, 'c) Either.t) -> 'a list -> ('b list * 'c list)
val assoc : 'a -> ('a * 'b) list -> 'b
val assoc_opt : 'a -> ('a * 'b) list -> 'b option
val assq : 'a -> ('a * 'b) list -> 'b
val assq_opt : 'a -> ('a * 'b) list -> 'b option
val mem_assoc : 'a -> map:('a * 'b) list -> bool
val mem_assq : 'a -> map:('a * 'b) list -> bool
val remove_assoc : 'a -> ('a * 'b) list -> ('a * 'b) list
val remove_assq : 'a -> ('a * 'b) list -> ('a * 'b) list
val split : ('a * 'b) list -> ('a list * 'b list)
val combine : 'a list -> 'b list -> ('a * 'b) list
val sort : cmp:('a -> 'a -> int) -> 'a list -> 'a list
val stable_sort : cmp:('a -> 'a -> int) -> 'a list -> 'a list
val fast_sort : cmp:('a -> 'a -> int) -> 'a list -> 'a list
val sort_uniq : cmp:('a -> 'a -> int) -> 'a list -> 'a list
val merge : cmp:('a -> 'a -> int) -> 'a list -> 'a list -> 'a list
val to_seq : 'a list -> 'a Seq.t
val of_seq : 'a Seq.t -> 'a list
