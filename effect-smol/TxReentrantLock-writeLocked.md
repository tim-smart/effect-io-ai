Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.writeLocked

Checks whether any fiber holds a write lock.

**Example** (Checking whether a write lock is held)

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const isWriteLocked = yield* TxReentrantLock.writeLocked(lock)
  console.log(isWriteLocked) // false
})
```

**Signature**

```ts
declare const writeLocked: (self: TxReentrantLock) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L658)

Since v2.0.0