Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.withReadLock

Runs the provided effect while holding a read lock. The lock is automatically
released after the effect completes, fails, or is interrupted.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const result = yield* TxReentrantLock.withReadLock(
    lock,
    Effect.succeed("read data")
  )
  console.log(result) // "read data"
})
```

**Signature**

```ts
declare const withReadLock: { <A, E, R>(effect: Effect.Effect<A, E, R>): (self: TxReentrantLock) => Effect.Effect<A, E, R>; <A, E, R>(self: TxReentrantLock, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L395)

Since v4.0.0