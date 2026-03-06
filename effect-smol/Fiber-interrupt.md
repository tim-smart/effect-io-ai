Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interrupt

Interrupts a fiber, causing it to stop executing and clean up any
acquired resources.

**Example**

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.forkChild(
    Effect.delay("1 second")(Effect.succeed(42))
  )
  yield* Fiber.interrupt(fiber)
  console.log("Fiber interrupted")
})
```

**Signature**

```ts
declare const interrupt: <A, E>(self: Fiber<A, E>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L295)

Since v2.0.0