Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.writeLock

Acquires a write lock for the duration of the scope.
The lock is automatically released when the scope closes.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()

  yield* Effect.scoped(
    Effect.gen(function*() {
      yield* TxReentrantLock.writeLock(lock)
      // write lock is held for the duration of the scope
    })
  )
  // write lock is released
})
```

**Signature**

```ts
declare const writeLock: (self: TxReentrantLock) => Effect.Effect<number, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L344)

Since v4.0.0