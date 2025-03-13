Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.mapFiber

Passes the success of this fiber to the specified callback, and continues
with the fiber that it returns.

**Signature**

```ts
declare const mapFiber: { <E, E2, A, B>(f: (a: A) => Fiber<B, E2>): (self: Fiber<A, E>) => Effect.Effect<Fiber<B, E | E2>>; <A, E, E2, B>(self: Fiber<A, E>, f: (a: A) => Fiber<B, E2>): Effect.Effect<Fiber<B, E | E2>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L568)

Since v2.0.0