# combine

Combines this patch and the specified patch to create a new patch that
describes applying the changes from this patch and the specified patch
sequentially.

Part of the `Patch` module, imported from `@effect/io/FiberRefs/Patch`.

**Signature**

```ts
export declare const combine: {
  (that: FiberRefsPatch): (self: FiberRefsPatch) => FiberRefsPatch
  (self: FiberRefsPatch, that: FiberRefsPatch): FiberRefsPatch
}
```
