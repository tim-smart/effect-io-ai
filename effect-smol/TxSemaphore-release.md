Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.release

Releases a single permit back to the semaphore, making it available for acquisition.

**Example**

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(2)

  // Acquire a permit
  yield* TxSemaphore.acquire(semaphore)
  let available = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`After acquire: ${available}`) // 1

  // Release the permit
  yield* TxSemaphore.release(semaphore)
  available = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`After release: ${available}`) // 2
})
```

**Signature**

```ts
declare const release: (self: TxSemaphore) => Effect.Effect<void, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L357)

Since v4.0.0