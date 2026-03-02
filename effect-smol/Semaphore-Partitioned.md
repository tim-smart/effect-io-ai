Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.Partitioned

A `Partitioned` semaphore controls access to a shared permit pool while
tracking waiters by partition key.

Waiting permits are distributed across partitions in round-robin order.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `PartitionedSemaphore.PartitionedSemaphore`

**Signature**

```ts
export interface Partitioned<in K> {
  readonly [PartitionedTypeId]: PartitionedTypeId
  readonly withPermits: (
    key: K,
    permits: number
  ) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L197)

Since v3.19.4