Package: `effect`<br />
Module: `Effect`<br />

## Effect.forkWithErrorHandler

Like `fork` but handles an error with the provided handler.

**Signature**

```ts
declare const forkWithErrorHandler: { <E, X>(handler: (e: E) => Effect<X>): <A, R>(self: Effect<A, E, R>) => Effect<Fiber.RuntimeFiber<A, E>, never, R>; <A, E, R, X>(self: Effect<A, E, R>, handler: (e: E) => Effect<X>): Effect<Fiber.RuntimeFiber<A, E>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6361)

Since v2.0.0