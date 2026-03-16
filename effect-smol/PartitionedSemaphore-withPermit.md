Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.withPermit

Runs an effect with a single permit for a partition.

**Signature**

```ts
declare const withPermit: { <K>(self: PartitionedSemaphore<K>, key: K): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <K, A, E, R>(self: PartitionedSemaphore<K>, key: K, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L326)

Since v4.0.0