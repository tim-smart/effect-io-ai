Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.release

Returns an effect that releases permits back to the shared pool and returns
the current available permit count.

**Details**

Released permits are first assigned to waiting partitions in round-robin
order. Only permits not needed by waiters increase the available count,
which is capped at the semaphore capacity.

**Signature**

```ts
declare const release: { (permits: number): <K>(self: PartitionedSemaphore<K>) => Effect.Effect<number>; <K>(self: PartitionedSemaphore<K>, permits: number): Effect.Effect<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L379)

Since v4.0.0