## add

Add a fiber to the FiberSet. When the fiber completes, it will be removed.

**Signature**

```ts
declare const add: { <A, E, XE extends E, XA extends A>(fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): (self: FiberSet<A, E>) => Effect.Effect<void>; <A, E, XE extends E, XA extends A>(self: FiberSet<A, E>, fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L242)

Since v2.0.0