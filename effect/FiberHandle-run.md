## run

Run an Effect and add the forked fiber to the FiberHandle.
When the fiber completes, it will be removed from the FiberHandle.

**Signature**

```ts
declare const run: { <A, E>(self: FiberHandle<A, E>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; }): <R, XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>) => Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>; <A, E, R, XE extends E, XA extends A>(self: FiberHandle<A, E>, effect: Effect.Effect<XA, XE, R>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; }): Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L344)

Since v2.0.0