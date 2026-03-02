Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.withWriteLock

Runs the provided effect while holding a write lock. The lock is automatically
released after the effect completes, fails, or is interrupted.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const result = yield* TxReentrantLock.withWriteLock(
    lock,
    Effect.succeed("wrote data")
  )
  console.log(result) // "wrote data"
})
```

**Signature**

```ts
declare const withWriteLock: { <A, E, R>(effect: Effect.Effect<A, E, R>): (self: TxReentrantLock) => Effect.Effect<A, E, R>; <A, E, R>(self: TxReentrantLock, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L437)

Since v4.0.0