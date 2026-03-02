Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.TxDeferred

A transactional deferred — a write-once cell readable within transactions.

Readers block (retry the transaction) until a value is committed.
Writers succeed only on the first call; subsequent writes return `false`.

**Example**

```ts
import { Effect, TxDeferred } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* TxDeferred.make<number>()

  // Complete the deferred
  const first = yield* TxDeferred.succeed(deferred, 42)
  console.log(first) // true

  // Second write is a no-op
  const second = yield* TxDeferred.succeed(deferred, 99)
  console.log(second) // false

  // Read the value
  const value = yield* TxDeferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
export interface TxDeferred<in out A, in out E = never> extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly ref: TxRef.TxRef<Option<Result<A, E>>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L52)

Since v4.0.0