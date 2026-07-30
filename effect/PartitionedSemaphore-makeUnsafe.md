Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.makeUnsafe

A `PartitionedSemaphore` is a concurrency primitive that can be used to
control concurrent access to a resource across multiple partitions identified
by keys.

The total number of permits is shared across all partitions, with waiting
permits equally distributed among partitions using a round-robin strategy.

This is useful when you want to limit the total number of concurrent accesses
to a resource, while still allowing for fair distribution of access across
different partitions.

**Signature**

```ts
declare const makeUnsafe: <K = unknown>(options: { readonly permits: number; }) => PartitionedSemaphore<K>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PartitionedSemaphore.ts#L65)

Since v3.19.4