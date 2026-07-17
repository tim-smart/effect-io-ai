Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.acquire

Acquires a single permit from the semaphore. If no permits are available,
the effect will block until one becomes available.

**When to use**

Use to manually acquire one permit transactionally, waiting until one is
available.

**Example** (Acquiring a permit)

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

**See**

- `tryAcquire` for a non-blocking single-permit attempt
- `release` for returning one permit
- `withPermit` for automatic acquire and release around an effect

**Signature**

```ts
declare const acquire: (self: TxSemaphore) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxSemaphore.ts#L241)

Since v2.0.0