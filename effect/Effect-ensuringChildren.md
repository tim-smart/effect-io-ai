## ensuringChildren

Acts on the children of this fiber, guaranteeing the specified callback
will be invoked, whether or not this effect succeeds.

**Signature**

```ts
declare const ensuringChildren: { <X, R2>(children: (fibers: ReadonlyArray<Fiber.RuntimeFiber<any, any>>) => Effect<X, never, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R2 | R>; <A, E, R, X, R2>(self: Effect<A, E, R>, children: (fibers: ReadonlyArray<Fiber.RuntimeFiber<any, any>>) => Effect<X, never, R2>): Effect<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6056)

Since v2.0.0