Package: `@effect/cluster`<br />
Module: `Storage`<br />

## Storage.Storage

The storage Service is responsible of persisting assignments and registered pods.
The storage is expected to be shared among all pods, so it works also as communication of assignments between Pods.

**Signature**

```ts
export interface Storage {
  readonly [StorageTypeId]: StorageTypeId

  /**
   * Get the current state of shard assignments to pods
   */
  readonly getAssignments: Effect.Effect<HashMap.HashMap<ShardId.ShardId, Option.Option<PodAddress.PodAddress>>>

  /**
   * Save the current state of shard assignments to pods
   */
  readonly saveAssignments: (
    assignments: HashMap.HashMap<ShardId.ShardId, Option.Option<PodAddress.PodAddress>>
  ) => Effect.Effect<void>

  /**
   * A stream that will emit the state of shard assignments whenever it changes
   */
  readonly assignmentsStream: Stream.Stream<HashMap.HashMap<ShardId.ShardId, Option.Option<PodAddress.PodAddress>>>

  /**
   * Get the list of existing pods
   */
  readonly getPods: Effect.Effect<HashMap.HashMap<PodAddress.PodAddress, Pod.Pod>>

  /**
   * Save the list of existing pods
   */
  readonly savePods: (pods: HashMap.HashMap<PodAddress.PodAddress, Pod.Pod>) => Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Storage.ts#L34)

Since v1.0.0