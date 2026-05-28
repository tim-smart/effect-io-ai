Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.Partitioned

Alias interface for a `PartitionedSemaphore` keyed by values of type `K`.

**When to use**

Use as an alternate exported name for a partitioned permit pool keyed by `K`.

**Details**

This interface does not add members beyond `PartitionedSemaphore`; it
provides an alternate exported name for APIs that refer to a partitioned
permit pool.

**Signature**

```ts
export interface Partitioned<in K> extends PartitionedSemaphore<K> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L122)

Since v4.0.0