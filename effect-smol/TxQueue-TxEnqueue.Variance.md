Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxEnqueue.Variance

Variance annotation interface for TxEnqueue contravariance.

**Example**

```ts
import type { TxQueue } from "effect"

// Demonstrates contravariant type behavior for both A and E
declare const variance: TxQueue.TxEnqueue.Variance<string, Error>
```

**Signature**

```ts
export interface Variance<in A, in E> {
    readonly _A: Types.Contravariant<A>
    readonly _E: Types.Contravariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L99)

Since v4.0.0