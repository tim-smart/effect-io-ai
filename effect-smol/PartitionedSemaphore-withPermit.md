Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.withPermit

Runs an effect after acquiring one permit for a partition, then releases the
permit when the effect exits.

**Details**

This is the single-permit variant of `withPermits`. The permit is released
even if the wrapped effect fails or is interrupted.

**Signature**

```ts
declare const withPermit: { <K>(self: PartitionedSemaphore<K>, key: K): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <K, A, E, R>(self: PartitionedSemaphore<K>, key: K, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L431)

Since v4.0.0