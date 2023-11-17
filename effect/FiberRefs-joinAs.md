# joinAs

Joins this collection of fiber refs to the specified collection, as the
specified fiber id. This will perform diffing and merging to ensure
preservation of maximum information from both child and parent refs.

To import and use `joinAs` from the "FiberRefs" module:

```ts
import * as FiberRefs from "effect/FiberRefs"
// Can be accessed like this
FiberRefs.joinAs
```

**Signature**

```ts
export declare const joinAs: {
  (fiberId: FiberId.Runtime, that: FiberRefs): (self: FiberRefs) => FiberRefs
  (self: FiberRefs, fiberId: FiberId.Runtime, that: FiberRefs): FiberRefs
}
```
