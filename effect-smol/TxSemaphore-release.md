Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.release

Releases one permit back to the semaphore, making it available for
acquisition.

**When to use**

Use to manually return one permit after a transactional acquire.

**Details**

If the semaphore is already at capacity, this operation leaves the permit
count unchanged.

**Example** (Releasing a permit)

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

**See**

- `acquire` for manually acquiring one permit
- `releaseN` for returning multiple permits

**Signature**

```ts
declare const release: (self: TxSemaphore) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L459)

Since v2.0.0