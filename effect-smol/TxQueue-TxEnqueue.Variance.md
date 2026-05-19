Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxEnqueue.Variance

Variance annotation interface for TxEnqueue contravariance.

**Signature**

```ts
export interface Variance<in A, in E> {
    readonly _A: Types.Contravariant<A>
    readonly _E: Types.Contravariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L83)

Since v4.0.0