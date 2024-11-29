# ScopedRef

A `ScopedRef` is a reference whose value is associated with resources,
which must be released properly. You can both get the current value of any
`ScopedRef`, as well as set it to a new value (which may require new
resources). The reference itself takes care of properly releasing resources
for the old value whenever a new value is obtained.

To import and use `ScopedRef` from the "ScopedRef" module:

ts
import \* as ScopedRef from "effect/ScopedRef"
// Can be accessed like this
ScopedRef.ScopedRef
undefined
