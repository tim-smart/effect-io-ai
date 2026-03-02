Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.withLock

Alias for `withWriteLock`. Runs the provided effect while holding a write lock.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const result = yield* TxReentrantLock.withLock(
    lock,
    Effect.succeed("exclusive operation")
  )
  console.log(result) // "exclusive operation"
})
```

**Signature**

```ts
declare const withLock: { <A, E, R>(effect: Effect.Effect<A, E, R>): (self: TxReentrantLock) => Effect.Effect<A, E, R>; <A, E, R>(self: TxReentrantLock, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L478)

Since v4.0.0