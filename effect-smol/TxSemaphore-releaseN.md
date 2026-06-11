Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.releaseN

Releases the specified number of permits back to the semaphore.

**When to use**

Use to manually return multiple permits after a transactional acquire.

**Details**

The available permit count is capped at the semaphore capacity.

**Gotchas**

Passing a non-positive `n` dies with a defect.

**Example** (Releasing multiple permits)

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(5)

  // Acquire 3 permits
  yield* TxSemaphore.acquireN(semaphore, 3)
  let available = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`After acquire: ${available}`) // 2

  // Release 2 permits
  yield* TxSemaphore.releaseN(semaphore, 2)
  available = yield* TxSemaphore.available(semaphore)
  yield* Console.log(`After release: ${available}`) // 4
})
```

**See**

- `acquireN` for manually acquiring multiple permits
- `release` for returning one permit

**Signature**

```ts
declare const releaseN: (self: TxSemaphore, n: number) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L475)

Since v2.0.0