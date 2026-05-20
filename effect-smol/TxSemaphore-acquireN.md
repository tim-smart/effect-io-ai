Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.acquireN

Acquires the specified number of permits from the semaphore.

**Details**

If fewer than `n` permits are available, the transaction retries until enough
permits are released.

**Gotchas**

Passing a non-positive `n` dies with a defect. Passing a value greater than
the semaphore capacity can wait forever because the capacity is fixed.

**Example** (Acquiring multiple permits)

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(5)

  yield* Console.log("Acquiring 3 permits...")
  yield* TxSemaphore.acquireN(semaphore, 3)
  yield* Console.log("3 permits acquired")

  const available = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`Available permits: ${available}`) // 2
})
```

**Signature**

```ts
declare const acquireN: (self: TxSemaphore, n: number) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L256)

Since v2.0.0