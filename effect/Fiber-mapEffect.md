Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.mapEffect

Effectually maps over the value the fiber computes.

**Signature**

```ts
declare const mapEffect: { <A, A2, E2>(f: (a: A) => Effect.Effect<A2, E2>): <E>(self: Fiber<A, E>) => Fiber<A2, E2 | E>; <A, E, A2, E2>(self: Fiber<A, E>, f: (a: A) => Effect.Effect<A2, E2>): Fiber<A2, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L556)

Since v2.0.0