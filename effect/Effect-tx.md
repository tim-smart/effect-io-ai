Package: `effect`<br />
Module: `Effect`<br />

## Effect.tx

Defines a transaction boundary. Transactions are "all or nothing" with respect to changes
made to transactional values (i.e. TxRef) that occur within the transaction body.

**Details**

If called inside an active transaction, `tx` composes with the current transaction and reuses
its journal and retry state instead of creating a nested boundary.

Effect transactions are optimistic with retry. A transaction is retried when
its body explicitly calls `Effect.txRetry` and any accessed transactional
value changes, or when any accessed transactional value changes because a
different transaction commits before the current one.

The outermost `tx` call creates the transaction boundary and commits or rolls back the full
composed transaction.

**Example** (Running a transaction)

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const ref1 = yield* TxRef.make(0)
  const ref2 = yield* TxRef.make(0)

  // Nested tx calls compose into the same transaction
  yield* Effect.tx(Effect.gen(function*() {
    yield* TxRef.set(ref1, 10)
    yield* Effect.tx(TxRef.set(ref2, 20))
    const sum = (yield* TxRef.get(ref1)) + (yield* TxRef.get(ref2))
    console.log(`Transaction sum: ${sum}`)
  }))

  console.log(`Final ref1: ${yield* TxRef.get(ref1)}`) // 10
  console.log(`Final ref2: ${yield* TxRef.get(ref2)}`) // 20
})
```

**Signature**

```ts
declare const tx: <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, Exclude<R, Transaction>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L14652)

Since v4.0.0