Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.PartitionedSemaphore

A `PartitionedSemaphore` controls access to a shared permit pool while
tracking waiters by partition key.

**When to use**

Use to coordinate shared permits across partition keys so waiting groups make
progress without one group monopolizing the pool.

**Details**

Waiting permits are distributed across partitions in round-robin order.

**Signature**

```ts
export interface PartitionedSemaphore<in K> {
  readonly [PartitionedTypeId]: PartitionedTypeId
  readonly capacity: number
  readonly available: Effect.Effect<number>
  readonly take: (key: K, permits: number) => Effect.Effect<void>
  readonly release: (permits: number) => Effect.Effect<number>
  readonly withPermits: (
    key: K,
    permits: number
  ) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  readonly withPermit: (key: K) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  readonly withPermitsIfAvailable: (
    permits: number
  ) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L90)

Since v3.19.4