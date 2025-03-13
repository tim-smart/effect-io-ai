Package: `effect`<br />
Module: `FiberRefs`<br />

## FiberRefs.getOrDefault

Gets the value of the specified `FiberRef` in this collection of `FiberRef`
values if it exists or the `initial` value of the `FiberRef` otherwise.

**Signature**

```ts
declare const getOrDefault: { <A>(fiberRef: FiberRef.FiberRef<A>): (self: FiberRefs) => A; <A>(self: FiberRefs, fiberRef: FiberRef.FiberRef<A>): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L94)

Since v2.0.0