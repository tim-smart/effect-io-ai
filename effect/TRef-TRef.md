# TRef

A `TRef<A>` is a purely functional description of a mutable reference that can
be modified as part of a transactional effect. The fundamental operations of
a `TRef` are `set` and `get`. `set` transactionally sets the reference to a
new value. `get` gets the current value of the reference.

NOTE: While `TRef<A>` provides the transactional equivalent of a mutable
reference, the value inside the `TRef` should be immutable.

To import and use `TRef` from the "TRef" module:

ts
import \* as TRef from "effect/TRef"
// Can be accessed like this
TRef.TRef
undefined
