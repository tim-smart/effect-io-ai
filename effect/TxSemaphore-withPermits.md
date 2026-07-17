Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.withPermits

Runs an effect while holding the specified number of permits from the
semaphore.

**When to use**

Use to run an effect while automatically acquiring and releasing multiple
transactional permits.

**Details**

The permits are acquired before the effect starts and released after it
completes, fails, or is interrupted.

**Gotchas**

Passing a non-positive `n` dies with a defect. Passing a value greater than
the semaphore capacity can wait forever.

**Example** (Running an effect with multiple permits)

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

**See**

- `withPermit` for automatically acquiring and releasing one permit
- `acquireN` for manual multi-permit acquisition

**Signature**

```ts
declare const withPermits: { (self: TxSemaphore, n: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: TxSemaphore, n: number, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxSemaphore.ts#L601)

Since v2.0.0