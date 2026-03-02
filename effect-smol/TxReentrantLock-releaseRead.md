Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.releaseRead

Releases a read lock held by the current fiber.
Returns the remaining number of read locks held by this fiber.

**Example**

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
declare const releaseRead: (self: TxReentrantLock) => Effect.Effect<number, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L234)

Since v4.0.0