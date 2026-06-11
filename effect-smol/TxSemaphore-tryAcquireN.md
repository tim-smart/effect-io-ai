Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.tryAcquireN

Tries to acquire the specified number of permits from the semaphore without
blocking, returning `true` if successful or `false` if not enough permits are
available.

**When to use**

Use to attempt a multi-permit acquisition without retrying when not enough
permits are available.

**Example** (Trying to acquire multiple permits)

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

**See**

- `acquireN` for waiting until all requested permits are available
- `tryAcquire` for attempting to acquire one permit without blocking

**Signature**

```ts
declare const tryAcquireN: (self: TxSemaphore, n: number) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L380)

Since v4.0.0