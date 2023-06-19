# patch

Applies the changes described by this patch to the specified collection
of `FiberRef` values.

Part of the `Patch` module, imported from `@effect/io/FiberRefs/Patch`.

**Signature**

```ts
export declare const patch: {
  (fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): (self: FiberRefsPatch) => FiberRefs.FiberRefs
  (self: FiberRefsPatch, fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): FiberRefs.FiberRefs
}
```
