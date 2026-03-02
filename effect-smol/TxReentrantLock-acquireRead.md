Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.acquireRead

Acquires a read lock. Blocks if another fiber holds the write lock.
If the current fiber already holds the write lock, the read lock is granted (reentrancy).
Returns the current number of read locks held by this fiber.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const count = yield* TxReentrantLock.acquireRead(lock)
  console.log(count) // 1
  yield* TxReentrantLock.releaseRead(lock)
})
```

**Signature**

```ts
declare const acquireRead: (self: TxReentrantLock) => Effect.Effect<number, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L134)

Since v4.0.0