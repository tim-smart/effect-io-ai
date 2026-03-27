Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.TxRef

TxRef is a transactional value, it can be read and modified within the body of a transaction.

Accessed values are tracked by the transaction in order to detect conflicts and in order to
track changes, a transaction will retry whenever a conflict is detected or whenever the
transaction explicitely calls to `Effect.txRetry` and any of the accessed TxRef values
change.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  // Create a transactional reference
  const ref: TxRef.TxRef<number> = yield* TxRef.make(0)

  // Use within a transaction
  yield* Effect.tx(Effect.gen(function*() {
    const current = yield* TxRef.get(ref)
    yield* TxRef.set(ref, current + 1)
  }))

  const final = yield* TxRef.get(ref)
  console.log(final) // 1
})
```

**Signature**

```ts
export interface TxRef<in out A> extends Pipeable {
  readonly [TypeId]: typeof TypeId

  version: number
  pending: Map<unknown, () => void>
  value: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L48)

Since v4.0.0