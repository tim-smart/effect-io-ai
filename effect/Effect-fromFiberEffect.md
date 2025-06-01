Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromFiberEffect

Creates an `Effect` value that represents the exit value of a fiber obtained
from an effect.

**See**

- `fromFiber` for creating an effect from a fiber.

**Signature**

```ts
declare const fromFiberEffect: <A, E, R>(fiber: Effect<Fiber.Fiber<A, E>, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6552)

Since v2.0.0