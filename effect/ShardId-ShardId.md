# ShardId

A shard is a logical grouping of multiple entities. There could be thousands of entities in your system,
so instead of managing every single entity id, the shard manager group them by shard id, and when they are assigned
or moved around, we always move all the entities with the same shard id.

To import and use `ShardId` from the "ShardId" module:

```ts
import * as ShardId from "@effect/cluster/ShardId"
// Can be accessed like this
ShardId.ShardId
```
