Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromFiber

Creates an `Effect` value that represents the exit value of the specified
fiber.

**See**

- `fromFiberEffect` for creating an effect from a fiber obtained from an effect.

**Signature**

```ts
declare const fromFiber: <A, E>(fiber: Fiber.Fiber<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6512)

Since v2.0.0