Package: `effect`<br />
Module: `FiberRefs`<br />

## FiberRefs.delete

Deletes the specified `FiberRef` from the `FibterRefs`.

**Signature**

```ts
declare const delete: { <A>(fiberRef: FiberRef.FiberRef<A>): (self: FiberRefs) => FiberRefs; <A>(self: FiberRefs, fiberRef: FiberRef.FiberRef<A>): FiberRefs; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L51)

Since v2.0.0