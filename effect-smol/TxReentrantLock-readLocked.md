Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.readLocked

Checks if any fiber holds a read lock.

**Example**

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
declare const readLocked: (self: TxReentrantLock) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L579)

Since v4.0.0