Package: `effect`<br />
Module: `FiberRefsPatch`<br />

## FiberRefsPatch.patch

Applies the changes described by this patch to the specified collection
of `FiberRef` values.

**Signature**

```ts
declare const patch: { (fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): (self: FiberRefsPatch) => FiberRefs.FiberRefs; (self: FiberRefsPatch, fiberId: FiberId.Runtime, oldValue: FiberRefs.FiberRefs): FiberRefs.FiberRefs; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefsPatch.ts#L102)

Since v2.0.0