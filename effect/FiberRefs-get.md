## get

Gets the value of the specified `FiberRef` in this collection of `FiberRef`
values if it exists or `None` otherwise.

**Signature**

```ts
declare const get: { <A>(fiberRef: FiberRef.FiberRef<A>): (self: FiberRefs) => Option.Option<A>; <A>(self: FiberRefs, fiberRef: FiberRef.FiberRef<A>): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L82)

Since v2.0.0