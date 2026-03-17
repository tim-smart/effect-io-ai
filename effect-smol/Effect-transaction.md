Package: `effect`<br />
Module: `Effect`<br />

## Effect.transaction

Defines a transaction boundary. Transactions are "all or nothing" with respect to changes
made to transactional values (i.e. TxRef) that occur within the transaction body.

In Effect transactions are optimistic with retry, that means transactions are retried when:

- the body of the transaction explicitely calls to `Effect.retryTransaction` and any of the
  accessed transactional values changes.

- any of the accessed transactional values change during the execution of the transaction
  due to a different transaction committing before the current.

Each call to `transaction` always creates a new isolated transaction boundary with its own
journal and retry logic.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const ref1 = yield* Effect.transaction(TxRef.make(0))
  const ref2 = yield* Effect.transaction(TxRef.make(0))

  // All operations within transaction block succeed or fail together
  yield* Effect.transaction(Effect.gen(function*() {
    yield* TxRef.set(ref1, 10)
    yield* TxRef.set(ref2, 20)
    const sum = (yield* TxRef.get(ref1)) + (yield* TxRef.get(ref2))
    console.log(`Transaction sum: ${sum}`)
  }))

  console.log(`Final ref1: ${yield* Effect.transaction(TxRef.get(ref1))}`) // 10
  console.log(`Final ref2: ${yield* Effect.transaction(TxRef.get(ref2))}`) // 20
})
```

**Signature**

```ts
declare const transaction: <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, Exclude<R, Transaction>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13862)

Since v4.0.0