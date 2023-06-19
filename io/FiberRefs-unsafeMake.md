# unsafeMake

Note: it will not copy the provided Map, make sure to provide a fresh one.

Part of the `FiberRefs` module, imported from `@effect/io/FiberRefs`.

**Signature**

```ts
export declare const unsafeMake: (
  fiberRefLocals: Map<FiberRef.FiberRef<any>, Arr.NonEmptyReadonlyArray<readonly [FiberId.Runtime, any]>>
) => FiberRefs
```
