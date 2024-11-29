# sendMessageToLocalEntityManagerWithoutRetries

Sends a raw message to the local entity manager without performing reties.
Those are up to the caller.

To import and use `sendMessageToLocalEntityManagerWithoutRetries` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.sendMessageToLocalEntityManagerWithoutRetries
undefined

**Signature**

```ts
export declare const sendMessageToLocalEntityManagerWithoutRetries: (
  message: SerializedEnvelope.SerializedEnvelope
) => Effect.Effect<
  MessageState.MessageState<SerializedMessage.SerializedMessage>,
  ShardingException.ShardingException,
  Sharding
>
```
