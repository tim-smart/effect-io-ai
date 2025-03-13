Package: `effect`<br />
Module: `FiberRefs`<br />

## FiberRefs.unsafeMake

Note: it will not copy the provided Map, make sure to provide a fresh one.

**Signature**

```ts
declare const unsafeMake: (fiberRefLocals: Map<FiberRef.FiberRef<any>, Arr.NonEmptyReadonlyArray<readonly [FiberId.Single, any]>>) => FiberRefs
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L194)

Since v2.0.0