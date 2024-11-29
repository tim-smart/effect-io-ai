# shardId

Gets the current shardId

To import and use `shardId` from the "RecipientBehaviourContext" module:

ts
import \* as RecipientBehaviourContext from "@effect/cluster/RecipientBehaviourContext"
// Can be accessed like this
RecipientBehaviourContext.shardId
undefined

**Signature**

```ts
export declare const shardId: Effect.Effect<ShardId.ShardId, never, RecipientBehaviourContext>
```
