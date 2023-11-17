# forkAs

Forks this collection of fiber refs as the specified child fiber id. This
will potentially modify the value of the fiber refs, as determined by the
individual fiber refs that make up the collection.

To import and use `forkAs` from the "FiberRefs" module:

```ts
import * as FiberRefs from "effect/FiberRefs"
// Can be accessed like this
FiberRefs.forkAs
```

**Signature**

```ts
export declare const forkAs: {
  (childId: FiberId.Runtime): (self: FiberRefs) => FiberRefs
  (self: FiberRefs, childId: FiberId.Runtime): FiberRefs
}
```
