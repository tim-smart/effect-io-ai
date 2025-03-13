Package: `effect`<br />
Module: `Effect`<br />

## Effect.updateFiberRefs

Updates the `FiberRef` values for the fiber running this effect using the
specified function.

**Signature**

```ts
declare const updateFiberRefs: (f: (fiberId: FiberId.Runtime, fiberRefs: FiberRefs.FiberRefs) => FiberRefs.FiberRefs) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10290)

Since v2.0.0