Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.readLocked

Checks if any fiber holds a read lock.

**Example** (Checking whether a read lock is held)

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const isReadLocked = yield* TxReentrantLock.readLocked(lock)
  console.log(isReadLocked) // false
})
```

**Signature**

```ts
declare const readLocked: (self: TxReentrantLock) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L606)

Since v2.0.0