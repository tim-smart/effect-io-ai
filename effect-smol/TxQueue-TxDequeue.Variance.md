Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxDequeue.Variance

Variance annotation interface for TxDequeue covariance.

**Example**

```ts
import type { TxQueue } from "effect"

// Demonstrates covariant type behavior for both A and E
declare const variance: TxQueue.TxDequeue.Variance<string, Error>
```

**Signature**

```ts
export interface Variance<out A, out E> {
    readonly _A: Types.Covariant<A>
    readonly _E: Types.Covariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L134)

Since v4.0.0