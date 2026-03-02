Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.acquire

Acquires a single permit from the semaphore. If no permits are available,
the effect will block until one becomes available.

**Example**

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(2)

  yield* Console.log("Acquiring first permit...")
  yield* TxSemaphore.acquire(semaphore)
  yield* Console.log("First permit acquired")

  yield* Console.log("Acquiring second permit...")
  yield* TxSemaphore.acquire(semaphore)
  yield* Console.log("Second permit acquired")

  const available = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`Available permits: ${available}`) // 0
})
```

**Signature**

```ts
declare const acquire: (self: TxSemaphore) => Effect.Effect<void, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L204)

Since v4.0.0