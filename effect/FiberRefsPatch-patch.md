# patch

Applies the changes described by this patch to the specified collection
of `FiberRef` values.

To import and use `patch` from the "FiberRefsPatch" module:

```ts
import * as FiberRefsPatch from 'effect/FiberRefsPatch'

// Can be accessed like this
FiberRefsPatch.patch
```

**Signature**

```ts
export declare const patch: {
  (fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): (self: FiberRefsPatch) => FiberRefs.FiberRefs
  (self: FiberRefsPatch, fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): FiberRefs.FiberRefs
}
```
