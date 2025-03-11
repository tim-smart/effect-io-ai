## updateAs

Updates the value of the specified `FiberRef` using the provided `FiberId`

**Signature**

```ts
declare const updateAs: { <A>(options: { readonly fiberId: FiberId.Single; readonly fiberRef: FiberRef.FiberRef<A>; readonly value: A; }): (self: FiberRefs) => FiberRefs; <A>(self: FiberRefs, options: { readonly fiberId: FiberId.Single; readonly fiberRef: FiberRef.FiberRef<A>; readonly value: A; }): FiberRefs; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L126)

Since v2.0.0