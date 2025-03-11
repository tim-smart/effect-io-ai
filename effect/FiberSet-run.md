## run

Fork an Effect and add the forked fiber to the FiberSet.
When the fiber completes, it will be removed from the FiberSet.

**Signature**

```ts
declare const run: { <A, E>(self: FiberSet<A, E>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): <R, XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>) => Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>; <A, E, R, XE extends E, XA extends A>(self: FiberSet<A, E>, effect: Effect.Effect<XA, XE, R>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L296)

Since v2.0.0