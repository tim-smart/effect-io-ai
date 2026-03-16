Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.withPermits

Runs an effect with permits for a partition.

**Signature**

```ts
declare const withPermits: { <K>(self: PartitionedSemaphore<K>, key: K, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <K, A, E, R>(self: PartitionedSemaphore<K>, key: K, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L299)

Since v4.0.0