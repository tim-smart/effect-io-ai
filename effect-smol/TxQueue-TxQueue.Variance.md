Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxQueue.Variance

Variance annotation interface for TxQueue invariance.

**Example**

```ts
import type { TxQueue } from "effect"

// Demonstrates invariant type behavior for both A and E
declare const variance: TxQueue.TxQueue.Variance<string, Error>
```

**Signature**

```ts
export interface Variance<in out A, in out E> {
    readonly _A: Types.Invariant<A>
    readonly _E: Types.Invariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L169)

Since v4.0.0