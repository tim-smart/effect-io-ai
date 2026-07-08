Package: `effect`<br />
Module: `Effect`<br />

## Effect.txRetry

Retries the current transaction by signaling that it must be retried.

**Details**

NOTE: the transaction retries on any change to transactional values (i.e. TxRef) accessed in its body.

**Example** (Retrying transactions)

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  // create a transactional reference
  const ref = yield* TxRef.make(0)

  // forks a fiber that increases the value of `ref` every 100 millis
  yield* Effect.forkChild(Effect.forever(
    // update to transactional value
    Effect.tx(TxRef.update(ref, (n) => n + 1)).pipe(Effect.delay("100 millis"))
  ))

  // the following will retry 10 times until the `ref` value is 10
  yield* Effect.tx(Effect.gen(function*() {
    const value = yield* TxRef.get(ref)
    if (value < 10) {
      yield* Effect.log(`retry due to value: ${value}`)
      return yield* Effect.txRetry
    }
    yield* Effect.log(`transaction done with value: ${value}`)
  }))
})

Effect.runPromise(program).catch(console.error)
```

**Signature**

```ts
declare const txRetry: Effect<never, never, Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14780)

Since v4.0.0