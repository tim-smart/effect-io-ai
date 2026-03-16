Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.take

Acquires permits for a partition.

**Signature**

```ts
declare const take: { <K>(key: K, permits: number): (self: PartitionedSemaphore<K>) => Effect.Effect<void>; <K>(self: PartitionedSemaphore<K>, key: K, permits: number): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L277)

Since v4.0.0