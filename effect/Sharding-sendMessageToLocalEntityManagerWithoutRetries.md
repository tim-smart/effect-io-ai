## sendMessageToLocalEntityManagerWithoutRetries

Sends a raw message to the local entity manager without performing reties.
Those are up to the caller.

**Signature**

```ts
declare const sendMessageToLocalEntityManagerWithoutRetries: (message: SerializedEnvelope.SerializedEnvelope) => Effect.Effect<MessageState.MessageState<SerializedMessage.SerializedMessage>, ShardingException.ShardingException, Sharding>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L199)

Since v1.0.0