Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.releaseWrite

Releases one write lock held by the current fiber.

**When to use**

Use to leave a manually acquired write lock.

**Details**

Returns the remaining number of write locks held by this fiber.

**Example** (Releasing a write lock)

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  yield* TxReentrantLock.acquireWrite(lock)
  const remaining = yield* TxReentrantLock.releaseWrite(lock)
  console.log(remaining) // 0
})
```

**Signature**

```ts
declare const releaseWrite: (self: TxReentrantLock) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxReentrantLock.ts#L306)

Since v2.0.0