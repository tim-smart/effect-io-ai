Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.Partitioned

Alias interface for a `PartitionedSemaphore` keyed by values of type `K`.

**Details**

This interface does not add members beyond `PartitionedSemaphore`; it
provides an alternate exported name for APIs that refer to a partitioned
permit pool.

**Signature**

```ts
export interface Partitioned<in K> extends PartitionedSemaphore<K> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L107)

Since v4.0.0