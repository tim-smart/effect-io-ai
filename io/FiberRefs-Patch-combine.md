# combine

Combines this patch and the specified patch to create a new patch that
describes applying the changes from this patch and the specified patch
sequentially.

To import and use `combine` from the "Patch" module:

```ts
import * as Patch from '@effect/io/FiberRefs/Patch'

// Can be accessed like this
Patch.combine
```

**Signature**

```ts
export declare const combine: {
  (that: FiberRefsPatch): (self: FiberRefsPatch) => FiberRefsPatch
  (self: FiberRefsPatch, that: FiberRefsPatch): FiberRefsPatch
}
```