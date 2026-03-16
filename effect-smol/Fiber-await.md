Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.await

Waits for a fiber to complete and returns its exit value.

**Example**

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.forkChild(Effect.succeed(42))
  const exit = yield* Fiber.await(fiber)
  console.log(exit) // Exit.succeed(42)
})
```

**Signature**

```ts
declare const await: <A, E>(self: Fiber<A, E>) => Effect<Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L210)

Since v2.0.0