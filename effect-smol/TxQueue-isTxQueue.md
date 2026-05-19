Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isTxQueue

Checks if the given value is a TxQueue.

**Example** (Checking queue handles)

```ts
import { TxQueue } from "effect"

declare const someValue: unknown

if (TxQueue.isTxQueue(someValue)) {
  // someValue is now typed as TxQueue<unknown, unknown>
  console.log("This is a TxQueue")
}
```

**Signature**

```ts
declare const isTxQueue: <A = unknown, E = unknown>(u: unknown) => u is TxQueue<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L306)

Since v4.0.0