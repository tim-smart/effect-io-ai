Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isTxDequeue

Checks if the given value is a TxDequeue.

**Example**

```ts
import { TxQueue } from "effect"

declare const someValue: unknown

if (TxQueue.isTxDequeue(someValue)) {
  // someValue is now typed as TxDequeue<unknown, unknown>
  console.log("This is a TxDequeue")
}
```

**Signature**

```ts
declare const isTxDequeue: <A = unknown, E = unknown>(u: unknown) => u is TxDequeue<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L328)

Since v4.0.0