Package: `effect`<br />
Module: `Effect`<br />

## Effect.uninterruptible

Returns a new effect that disables interruption for the given effect.

**Example**

```ts
import { Console, Effect, Fiber } from "effect"

const criticalTask = Effect.gen(function*() {
  yield* Console.log("Starting critical section...")
  yield* Effect.sleep("2 seconds")
  yield* Console.log("Critical section completed")
})

const program = Effect.uninterruptible(criticalTask)

const fiber = Effect.runFork(program)
// Even if interrupted, the critical task will complete
Effect.runPromise(Fiber.interrupt(fiber))
```

**Signature**

```ts
declare const uninterruptible: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6999)

Since v2.0.0