Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.withPermits

Runs an effect after acquiring permits for a partition, then releases those
permits when the effect exits.

**Details**

Permit acquisition may wait according to `take` semantics. Once acquired,
the permits are released even if the wrapped effect fails or is interrupted.
Requests for zero or a negative number of permits run the effect without
acquiring anything.

**Signature**

```ts
declare const withPermits: { <K>(self: PartitionedSemaphore<K>, key: K, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <K, A, E, R>(self: PartitionedSemaphore<K>, key: K, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L398)

Since v4.0.0