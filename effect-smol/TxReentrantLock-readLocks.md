Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.readLocks

Returns the total number of read locks held across all fibers.

**Example** (Counting read locks)

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  yield* TxReentrantLock.acquireRead(lock)
  const count = yield* TxReentrantLock.readLocks(lock)
  console.log(count) // 1
  yield* TxReentrantLock.releaseRead(lock)
})
```

**Signature**

```ts
declare const readLocks: (self: TxReentrantLock) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L530)

Since v2.0.0