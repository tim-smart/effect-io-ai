Package: `effect`<br />
Module: `Effect`<br />

## Effect.retryTransaction

Signals that the current transaction needs to be retried.

NOTE: the transaction retries on any change to transactional values (i.e. TxRef) accessed in its body.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  // create a transactional reference
  const ref = yield* Effect.transaction(TxRef.make(0))

  // forks a fiber that increases the value of `ref` every 100 millis
  yield* Effect.forkChild(Effect.forever(
    // update to transactional value
    Effect.transaction(TxRef.update(ref, (n) => n + 1)).pipe(Effect.delay("100 millis"))
  ))

  // the following will retry 10 times until the `ref` value is 10
  yield* Effect.transaction(Effect.gen(function*() {
    const value = yield* TxRef.get(ref)
    if (value < 10) {
      yield* Effect.log(`retry due to value: ${value}`)
      return yield* Effect.retryTransaction
    }
    yield* Effect.log(`transaction done with value: ${value}`)
  }))
})

Effect.runPromise(program).catch(console.error)
```

**Signature**

```ts
declare const retryTransaction: Effect<never, never, Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14007)

Since v4.0.0