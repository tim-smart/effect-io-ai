Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.withPermitsIfAvailable

Runs an effect only if the permits are immediately available.

**Signature**

```ts
declare const withPermitsIfAvailable: { <K>(self: PartitionedSemaphore<K>, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>; <K, A, E, R>(self: PartitionedSemaphore<K>, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L348)

Since v4.0.0