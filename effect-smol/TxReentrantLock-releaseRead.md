Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.releaseRead

Releases a read lock held by the current fiber.
Returns the remaining number of read locks held by this fiber.

**Example** (Releasing a read lock)

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  yield* TxReentrantLock.acquireRead(lock)
  const remaining = yield* TxReentrantLock.releaseRead(lock)
  console.log(remaining) // 0
})
```

**Signature**

```ts
declare const releaseRead: (self: TxReentrantLock) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L275)

Since v2.0.0