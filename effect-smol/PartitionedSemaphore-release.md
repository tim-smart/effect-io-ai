Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.release

Returns an effect that releases permits back to the shared pool and returns
the current available permit count.

**When to use**

Use to manually return permits acquired with `take` when a lower-level
partitioned permit protocol needs explicit release control.

**Details**

Released permits are first assigned to waiting partitions in round-robin
order. Only permits not needed by waiters increase the available count,
which is capped at the semaphore capacity.

**See**

- `take` for manual acquisition
- `withPermits` for automatic acquire and release around an effect
- `available` for reading the permit count without releasing

**Signature**

```ts
declare const release: { (permits: number): <K>(self: PartitionedSemaphore<K>) => Effect.Effect<number>; <K>(self: PartitionedSemaphore<K>, permits: number): Effect.Effect<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L460)

Since v4.0.0