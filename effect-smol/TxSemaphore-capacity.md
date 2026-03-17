Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.capacity

Gets the maximum capacity (total permits) of the semaphore.

**Example**

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(10)

  const capacity = yield* TxSemaphore.capacity(semaphore)
  yield* Console.log(`Semaphore capacity: ${capacity}`) // 10

  // Capacity remains constant regardless of current permits
  yield* TxSemaphore.acquire(semaphore)
  const stillSame = yield* TxSemaphore.capacity(semaphore)
  yield* Console.log(`Capacity after acquire: ${stillSame}`) // 10
})
```

**Signature**

```ts
declare const capacity: (self: TxSemaphore) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L173)

Since v4.0.0