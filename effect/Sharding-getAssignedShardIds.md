# getAssignedShardIds

Gets the list of shardIds assigned to the current Pod

To import and use `getAssignedShardIds` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.getAssignedShardIds
undefined

**Signature**

```ts
export declare const getAssignedShardIds: Effect.Effect<HashSet.HashSet<ShardId.ShardId>, never, Sharding>
```
