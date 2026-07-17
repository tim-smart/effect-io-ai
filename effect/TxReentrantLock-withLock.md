Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.withLock

Runs an effect while holding a write lock.

**When to use**

Use when you need to run an effect with exclusive write access through a
`TxReentrantLock` and prefer the concise lock helper.

**Example** (Running an effect with exclusive access)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxReentrantLock.ts#L498)

Since v2.0.0