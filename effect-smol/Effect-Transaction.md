Package: `effect`<br />
Module: `Effect`<br />

## Effect.Transaction

Service that holds the current transaction state, it includes

- a journal that stores any non committed change to TxRef values
- a retry flag to know if the transaction should be retried

**Example**

```ts
import { Effect } from "effect"

// Transaction class for software transactional memory operations
const txEffect = Effect.gen(function*() {
  const tx = yield* Effect.Transaction
  // Use transaction for coordinated state changes
  return "Transaction complete"
})
```

**Signature**

```ts
declare class Transaction
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13763)

Since v4.0.0