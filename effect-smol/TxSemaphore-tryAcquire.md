Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.tryAcquire

Tries to acquire a single permit from the semaphore without blocking.
Returns true if successful, false if no permits are available.

**Example**

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

**Signature**

```ts
declare const tryAcquire: (self: TxSemaphore) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L281)

Since v4.0.0