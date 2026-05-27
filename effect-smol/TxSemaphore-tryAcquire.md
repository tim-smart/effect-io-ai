Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.tryAcquire

Tries to acquire a single permit from the semaphore without blocking,
returning `true` if successful or `false` if no permits are available.

**When to use**

Use to attempt a single-permit acquisition without retrying when no permit is
available.

**Example** (Trying to acquire a permit)

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(1)

  // First try should succeed
  const first = yield* TxSemaphore.tryAcquire(semaphore)
  yield* Console.log(`First try: ${first}`) // true

  // Second try should fail (no permits left)
  const second = yield* TxSemaphore.tryAcquire(semaphore)
  yield* Console.log(`Second try: ${second}`) // false
})
```

**See**

- `acquire` for waiting until one permit is available
- `tryAcquireN` for attempting to acquire multiple permits without blocking

**Signature**

```ts
declare const tryAcquire: (self: TxSemaphore) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L366)

Since v4.0.0