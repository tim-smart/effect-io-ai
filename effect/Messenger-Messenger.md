Package: `@effect/cluster`<br />
Module: `Messenger`<br />

## Messenger.Messenger

An interface to communicate with a remote entity.

**Signature**

```ts
export interface Messenger<Msg extends Message.Message.Any> {
  /**
   * Send a message without waiting for a response (fire and forget)
   *
   * You can use Effect timeout to get send timeouts. The default behaviour is to send the message indifinetely
   *
   * @since 1.0.0
   */
  sendDiscard(entityId: string): (message: Msg) => Effect.Effect<void, ShardingException.ShardingException>

  /**
   * Send a message and wait for a response.
   *
   * You can use Effect timeout to get send timeouts. The default behaviour is to send the message indifinetely
   *
   * @since 1.0.0
   */
  send(
    entityId: string
  ): <A extends Msg>(
    message: A
  ) => Effect.Effect<
    Message.Message.Success<A>,
    ShardingException.ShardingException | Message.Message.Error<A>
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Messenger.ts#L15)

Since v1.0.0