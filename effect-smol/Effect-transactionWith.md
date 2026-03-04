Package: `effect`<br />
Module: `Effect`<br />

## Effect.transactionWith

Like `transaction` but provides access to the transaction state.

Always creates a new isolated transaction boundary with its own journal and retry logic.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.transactionWith((_txState) =>
  Effect.gen(function*() {
    const ref = yield* TxRef.make(0)
    yield* TxRef.set(ref, 42)
    return yield* TxRef.get(ref)
  })
)
```

**Signature**

```ts
declare const transactionWith: <A, E, R>(f: (state: Transaction["Service"]) => Effect<A, E, R>) => Effect<A, E, Exclude<R, Transaction>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13838)

Since v4.0.0