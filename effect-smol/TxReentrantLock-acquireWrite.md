Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.acquireWrite

Acquires a write lock. Blocks if any other fiber holds any lock.
If the current fiber already holds the write lock, the count is incremented (reentrancy).
If the current fiber holds a read lock, the write lock is granted (upgrade).
Returns the current number of write locks held by this fiber.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const count = yield* TxReentrantLock.acquireWrite(lock)
  console.log(count) // 1
  yield* TxReentrantLock.releaseWrite(lock)
})
```

**Signature**

```ts
declare const acquireWrite: (self: TxReentrantLock) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L177)

Since v4.0.0