## run

Run an Effect and add the forked fiber to the FiberMap.
When the fiber completes, it will be removed from the FiberMap.

**Signature**

```ts
declare const run: { <K, A, E>(self: FiberMap<K, A, E>, key: K, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): <R, XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>) => Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>; <K, A, E, R, XE extends E, XA extends A>(self: FiberMap<K, A, E>, key: K, effect: Effect.Effect<XA, XE, R>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L448)

Since v2.0.0