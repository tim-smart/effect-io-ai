## Pods

An interface to communicate with remote pods.
This is used by the Shard Manager for assigning and unassigning shards.
This is also used by pods for internal communication (forward messages to each other).

**Signature**

```ts
export interface Pods {
  /**
   * @since 1.0.0
   */
  readonly [PodsTypeId]: PodsTypeId

  /**
   * Notify a pod that it was assigned a list of shards
   * @since 1.0.0
   */
  readonly assignShards: (
    pod: PodAddress.PodAddress,
    shards: HashSet.HashSet<ShardId.ShardId>
  ) => Effect.Effect<void, ShardingException.PodUnavailableException>

  /**
   * Notify a pod that it was unassigned a list of shards
   * @since 1.0.0
   */
  readonly unassignShards: (
    pod: PodAddress.PodAddress,
    shards: HashSet.HashSet<ShardId.ShardId>
  ) => Effect.Effect<void, ShardingException.PodUnavailableException>

  /**
   * Check that a pod is responsive
   * @since 1.0.0
   */
  readonly ping: (pod: PodAddress.PodAddress) => Effect.Effect<void, ShardingException.PodUnavailableException>

  /**
   * Send a message to a pod and receive its message state
   * @since 1.0.0
   */
  readonly sendAndGetState: (
    pod: PodAddress.PodAddress,
    envelope: SerializedEnvelope.SerializedEnvelope
  ) => Effect.Effect<
    MessageState.MessageState<SerializedMessage.SerializedMessage>,
    ShardingException.ShardingException
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Pods.ts#L36)

Since v1.0.0