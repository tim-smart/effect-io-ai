Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.acquireWrite

Acquires the write lock for the current fiber.

**When to use**

Use to enter an exclusive section manually when `withWriteLock` is not the
right shape.

**Details**

Blocks if any other fiber holds a read or write lock. If the current fiber
already holds the write lock, the count is incremented. If the current fiber
holds a read lock, the write lock is granted as an upgrade.

Returns the current number of write locks held by this fiber.

**Example** (Acquiring a write lock)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L195)

Since v2.0.0