Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isTxEnqueue

Checks whether the given value is a TxEnqueue.

**Example** (Checking enqueue handles)

```ts
import { TxQueue } from "effect"

declare const someValue: unknown

if (TxQueue.isTxEnqueue(someValue)) {
  // someValue is now typed as TxEnqueue<unknown, unknown>
  console.log("This is a TxEnqueue")
}
```

**Signature**

```ts
declare const isTxEnqueue: <A = unknown, E = unknown>(u: unknown) => u is TxEnqueue<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L307)

Since v4.0.0