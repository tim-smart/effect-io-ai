Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.withPermits

Executes an effect with the specified number of permits from the semaphore.
The permits are automatically acquired before execution and released afterwards,
even if the effect fails or is interrupted.

**Note**: The permit acquisition and release operations use atomic semantics
to ensure proper resource management with Effect's scoped operations.

**Example**

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(5)

  // Execute batch operation with 3 permits
  const results = yield* TxSemaphore.withPermits(
    semaphore,
    3,
    Effect.gen(function*() {
      yield* Console.log("3 permits acquired, processing batch...")
      yield* Effect.sleep("200 millis") // Simulate batch processing
      return ["result1", "result2", "result3"]
    })
  )

  yield* Console.log(`Batch results: ${results.join(", ")}`)
  // All 3 permits are automatically released here
})
```

**Signature**

```ts
declare const withPermits: { (self: TxSemaphore, n: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: TxSemaphore, n: number, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L496)

Since v4.0.0