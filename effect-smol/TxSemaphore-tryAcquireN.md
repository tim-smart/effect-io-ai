Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.tryAcquireN

Tries to acquire the specified number of permits from the semaphore without blocking.
Returns true if successful, false if not enough permits are available.

**Example**

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(3)

  // Try to acquire 2 permits (should succeed)
  const first = yield* TxSemaphore.tryAcquireN(semaphore, 2)
  yield* Console.log(`First try (2 permits): ${first}`) // true

  // Try to acquire 2 more permits (should fail, only 1 left)
  const second = yield* TxSemaphore.tryAcquireN(semaphore, 2)
  yield* Console.log(`Second try (2 permits): ${second}`) // false
})
```

**Signature**

```ts
declare const tryAcquireN: (self: TxSemaphore, n: number) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L317)

Since v4.0.0