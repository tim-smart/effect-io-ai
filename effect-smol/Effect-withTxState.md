Package: `effect`<br />
Module: `Effect`<br />

## Effect.withTxState

Accesses the current transaction state within an active transaction.

This function requires `Transaction` in the context and does NOT create or strip
transaction boundaries. Use it to interact with the transaction journal (e.g. in
`TxRef` internals). To define a transaction boundary, use `transaction`.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* Effect.transaction(TxRef.make(0))

  yield* Effect.transaction(Effect.gen(function*() {
    yield* TxRef.set(ref, 42)
    return yield* TxRef.get(ref)
  }))
})
```

**Signature**

```ts
declare const withTxState: <A, E, R>(f: (state: Transaction["Service"]) => Effect<A, E, R>) => Effect<A, E, R | Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13800)

Since v4.0.0