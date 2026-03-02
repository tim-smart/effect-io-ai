Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.lock

Alias for `writeLock`. Acquires a write lock for the duration of the scope.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()

  yield* Effect.scoped(
    Effect.gen(function*() {
      yield* TxReentrantLock.lock(lock)
      // exclusive lock is held
    })
  )
})
```

**Signature**

```ts
declare const lock: (self: TxReentrantLock) => Effect.Effect<number, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L372)

Since v4.0.0