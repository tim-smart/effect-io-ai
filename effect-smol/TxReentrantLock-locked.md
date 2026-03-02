Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.locked

Checks if the lock is held by any fiber (read or write).

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const isLocked = yield* TxReentrantLock.locked(lock)
  console.log(isLocked) // false
})
```

**Signature**

```ts
declare const locked: (self: TxReentrantLock) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L556)

Since v4.0.0