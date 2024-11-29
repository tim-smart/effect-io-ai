# combine

Combines this patch and the specified patch to create a new patch that
describes applying the changes from this patch and the specified patch
sequentially.

To import and use `combine` from the "FiberRefsPatch" module:

ts
import \* as FiberRefsPatch from "effect/FiberRefsPatch"
// Can be accessed like this
FiberRefsPatch.combine
undefined

**Signature**

```ts
export declare const combine: {
  (that: FiberRefsPatch): (self: FiberRefsPatch) => FiberRefsPatch
  (self: FiberRefsPatch, that: FiberRefsPatch): FiberRefsPatch
}
```
