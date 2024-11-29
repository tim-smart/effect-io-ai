# fiberRefs

Returns a set of each `FiberRef` in this collection.

To import and use `fiberRefs` from the "FiberRefs" module:

ts
import \* as FiberRefs from "effect/FiberRefs"
// Can be accessed like this
FiberRefs.fiberRefs
undefined

**Signature**

```ts
export declare const fiberRefs: (self: FiberRefs) => HashSet.HashSet<FiberRef.FiberRef<any>>
```
