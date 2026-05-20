Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxDequeue.Variance

Variance annotation interface for TxDequeue covariance.

**Signature**

```ts
export interface Variance<out A, out E> {
    readonly _A: Types.Covariant<A>
    readonly _E: Types.Covariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L103)

Since v4.0.0