Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.noop

No-op `MessageStorage` service that does not persist messages or replies.

**Signature**

```ts
declare const noop: { readonly saveRequest: <R extends Rpc.Any>(envelope: Message.OutgoingRequest<R>) => Effect.Effect<SaveResult<R>, PersistenceError | MalformedMessage>; readonly saveEnvelope: (envelope: Message.OutgoingEnvelope) => Effect.Effect<void, PersistenceError | MalformedMessage>; readonly saveReply: <R extends Rpc.Any>(reply: Reply.ReplyWithContext<R>) => Effect.Effect<void, PersistenceError | MalformedMessage>; readonly clearReplies: (requestId: Snowflake.Snowflake) => Effect.Effect<void, PersistenceError>; readonly repliesFor: <R extends Rpc.Any>(requests: Iterable<Message.OutgoingRequest<R>>) => Effect.Effect<Array<Reply.Reply<R>>, PersistenceError | MalformedMessage>; readonly repliesForUnfiltered: (requestIds: Iterable<Snowflake.Snowflake>) => Effect.Effect<Array<Reply.Encoded>, PersistenceError | MalformedMessage>; readonly requestIdForPrimaryKey: (options: { readonly address: EntityAddress; readonly tag: string; readonly id: string; }) => Effect.Effect<Option.Option<Snowflake.Snowflake>, PersistenceError>; readonly registerReplyHandler: <R extends Rpc.Any>(message: Message.OutgoingRequest<R> | Message.IncomingRequest<R>) => Effect.Effect<void, EntityNotAssignedToRunner>; readonly unregisterReplyHandler: (requestId: Snowflake.Snowflake) => Effect.Effect<void>; readonly unregisterShardReplyHandlers: (shardId: ShardId.ShardId) => Effect.Effect<void>; readonly unprocessedMessages: (shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<Array<Message.Incoming<any>>, PersistenceError>; readonly unprocessedMessagesById: <R extends Rpc.Any>(messageIds: Iterable<Snowflake.Snowflake>) => Effect.Effect<Array<Message.Incoming<R>>, PersistenceError>; readonly resetShards: (shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<void, PersistenceError>; readonly resetAddress: (address: EntityAddress) => Effect.Effect<void, PersistenceError>; readonly clearAddress: (address: EntityAddress) => Effect.Effect<void, PersistenceError>; readonly withTransaction: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MessageStorage.ts#L772)

Since v4.0.0