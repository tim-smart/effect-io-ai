Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.available

Gets the current number of available permits in the semaphore.

**Example**

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(5)

  // Check available permits before acquiring
  const before = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`Available permits: ${before}`) // 5

  // Acquire some permits
  yield* TxSemaphore.acquire(semaphore)
  yield* TxSemaphore.acquire(semaphore)

  // Check available permits after acquiring
  const after = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`Available permits: ${after}`) // 3
})
```

**Signature**

```ts
declare const available: (self: TxSemaphore) => Effect.Effect<number, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L144)

Since v4.0.0