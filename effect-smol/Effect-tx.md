Package: `effect`<br />
Module: `Effect`<br />

## Effect.tx

Defines a transaction boundary. Transactions are "all or nothing" with respect to changes
made to transactional values (i.e. TxRef) that occur within the transaction body.

If called inside an active transaction, `tx` composes with the current transaction and reuses
its journal and retry state instead of creating a nested boundary.

In Effect transactions are optimistic with retry, that means transactions are retried when:

- the body of the transaction explicitely calls to `Effect.txRetry` and any of the
  accessed transactional values changes.

- any of the accessed transactional values change during the execution of the transaction
  due to a different transaction committing before the current.

The outermost `tx` call creates the transaction boundary and commits or rolls back the full
composed transaction.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13819)

Since v4.0.0