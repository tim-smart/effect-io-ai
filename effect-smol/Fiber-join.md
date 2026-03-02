Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.join

Joins a fiber, blocking until it completes. If the fiber succeeds,
returns its value. If it fails, the error is propagated.

**Example**

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.forkChild(Effect.succeed(42))
  const result = yield* Fiber.join(fiber)
  console.log(result) // 42
})
```

**Signature**

```ts
declare const join: <A, E>(self: Fiber<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L258)

Since v2.0.0