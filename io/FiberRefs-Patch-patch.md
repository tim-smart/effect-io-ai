# patch

Applies the changes described by this patch to the specified collection
of `FiberRef` values.

To import and use `patch` from the "Patch" module:

```ts
import * as Patch from '@effect/io/FiberRefs/Patch'

// Can be accessed like this
Patch.patch
```

**Signature**

```ts
export declare const patch: {
  (fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): (self: FiberRefsPatch) => FiberRefs.FiberRefs
  (self: FiberRefsPatch, fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): FiberRefs.FiberRefs
}
```
