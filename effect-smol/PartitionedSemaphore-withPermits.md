Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.withPermits

Runs an effect after acquiring permits for a partition, then releases those
permits when the effect exits.

**When to use**

Use to guard weighted partitioned work with automatic permit acquisition and
release around an effect.

**Details**

Permit acquisition may wait according to `take` semantics. Once acquired,
the permits are released even if the wrapped effect fails or is interrupted.

**Gotchas**

Requests for more permits than the semaphore capacity never complete.
Requests for zero or a negative number of permits run the effect without
acquiring anything.

**See**

- `withPermit` for the single-permit variant
- `withPermitsIfAvailable` for running only when permits are
immediately available
- `take` for manual acquisition
- `release` for manual release

**Signature**

```ts
declare const withPermits: { <K>(self: PartitionedSemaphore<K>, key: K, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <K, A, E, R>(self: PartitionedSemaphore<K>, key: K, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L494)

Since v4.0.0