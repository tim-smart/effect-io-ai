Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.fromEffect

Lifts an `Effect` into a `Fiber`.

**Signature**

```ts
declare const fromEffect: <A, E>(effect: Effect.Effect<A, E>) => Effect.Effect<Fiber<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L424)

Since v2.0.0