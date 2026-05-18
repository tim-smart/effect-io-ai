Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.make

Creates a `PartitionedSemaphore` inside an `Effect`.

**Details**

The `permits` option sets the shared permit capacity. The resulting
semaphore tracks waiters by partition key and distributes released permits
across waiting partitions in round-robin order.

**Signature**

```ts
declare const make: <K = unknown>(options: { readonly permits: number; }) => Effect.Effect<PartitionedSemaphore<K>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L325)

Since v4.0.0