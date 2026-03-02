Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.releaseWrite

Releases a write lock held by the current fiber.
Returns the remaining number of write locks held by this fiber.

**Example**

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
declare const releaseWrite: (self: TxReentrantLock) => Effect.Effect<number, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L272)

Since v4.0.0