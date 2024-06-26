type 'a t = 'a array
external length : 'a array -> int = "%array_length"
external get : 'a array -> int -> 'a = "%array_safe_get"
external set : 'a array -> int -> 'a -> unit = "%array_safe_set"
external make : int -> 'a -> 'a array = "caml_make_vect"
external create_float : int -> float array = "caml_make_float_vect"
val init : int -> f:(int -> 'a) -> 'a array
val make_matrix : dimx:int -> dimy:int -> 'a -> 'a array array
val init_matrix :
  dimx:int -> dimy:int -> f:(int -> int -> 'a) -> 'a array array
val append : 'a array -> 'a array -> 'a array
val concat : 'a array list -> 'a array
val sub : 'a array -> pos:int -> len:int -> 'a array
val copy : 'a array -> 'a array
val fill : 'a array -> pos:int -> len:int -> 'a -> unit
val blit :
  src:'a array ->
    src_pos:int -> dst:'a array -> dst_pos:int -> len:int -> unit
val to_list : 'a array -> 'a list
val of_list : 'a list -> 'a array
val iter : f:('a -> unit) -> 'a array -> unit
val iteri : f:(int -> 'a -> unit) -> 'a array -> unit
val map : f:('a -> 'b) -> 'a array -> 'b array
val map_inplace : f:('a -> 'a) -> 'a array -> unit
val mapi : f:(int -> 'a -> 'b) -> 'a array -> 'b array
val mapi_inplace : f:(int -> 'a -> 'a) -> 'a array -> unit
val fold_left : f:('acc -> 'a -> 'acc) -> init:'acc -> 'a array -> 'acc
val fold_left_map :
  f:('acc -> 'a -> ('acc * 'b)) -> init:'acc -> 'a array -> ('acc * 'b array)
val fold_right : f:('a -> 'acc -> 'acc) -> 'a array -> init:'acc -> 'acc
val iter2 : f:('a -> 'b -> unit) -> 'a array -> 'b array -> unit
val map2 : f:('a -> 'b -> 'c) -> 'a array -> 'b array -> 'c array
val for_all : f:('a -> bool) -> 'a array -> bool
val exists : f:('a -> bool) -> 'a array -> bool
val for_all2 : f:('a -> 'b -> bool) -> 'a array -> 'b array -> bool
val exists2 : f:('a -> 'b -> bool) -> 'a array -> 'b array -> bool
val mem : 'a -> set:'a array -> bool
val memq : 'a -> set:'a array -> bool
val find_opt : f:('a -> bool) -> 'a array -> 'a option
val find_index : f:('a -> bool) -> 'a array -> int option
val find_map : f:('a -> 'b option) -> 'a array -> 'b option
val find_mapi : f:(int -> 'a -> 'b option) -> 'a array -> 'b option
val split : ('a * 'b) array -> ('a array * 'b array)
val combine : 'a array -> 'b array -> ('a * 'b) array
val sort : cmp:('a -> 'a -> int) -> 'a array -> unit
val stable_sort : cmp:('a -> 'a -> int) -> 'a array -> unit
val fast_sort : cmp:('a -> 'a -> int) -> 'a array -> unit
val shuffle : rand:(int -> int) -> 'a array -> unit
val to_seq : 'a array -> 'a Seq.t
val to_seqi : 'a array -> (int * 'a) Seq.t
val of_seq : 'a Seq.t -> 'a array
external unsafe_get : 'a array -> int -> 'a = "%array_unsafe_get"
external unsafe_set : 'a array -> int -> 'a -> unit = "%array_unsafe_set"
module Floatarray :
sig
  external create : int -> floatarray = "caml_floatarray_create"
  external length : floatarray -> int = "%floatarray_length"
  external get : floatarray -> int -> float = "%floatarray_safe_get"
  external set : floatarray -> int -> float -> unit = "%floatarray_safe_set"
  external unsafe_get : floatarray -> int -> float = "%floatarray_unsafe_get"
  external unsafe_set :
    floatarray -> int -> float -> unit = "%floatarray_unsafe_set"
end
