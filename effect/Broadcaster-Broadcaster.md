## Broadcaster

An interface to communicate with a remote broadcast receiver

**Signature**

```ts
export interface Broadcaster<Msg extends Message.Message.Any> {
  /**
   * Broadcast a message without waiting for a response (fire and forget)
   *
   * You can use Effect timeout to get send timeouts. The default behaviour is to send the message indifinetely.
   * @since 1.0.0
   */
  readonly broadcastDiscard: (
    topicId: string
  ) => (message: Msg) => Effect.Effect<void, ShardingException.ShardingException>

  /**
   * Broadcast a message and wait for a response from each consumer
   *
   * You can use Effect timeout to get send timeouts. The default behaviour is to send the message indifinetely
   * @since 1.0.0
   */
  readonly broadcast: (
    topicId: string
  ) => <A extends Msg>(
    message: A
  ) => Effect.Effect<
    HashMap.HashMap<
      PodAddress.PodAddress,
      Either.Either<
        ShardingException.ShardingException | Message.Message.Error<A>,
        Message.Message.Success<A>
      >
    >,
    ShardingException.ShardingException
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Broadcaster.ts#L17)

Since v1.0.0