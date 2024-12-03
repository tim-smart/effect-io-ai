# make

Constructs a shard id from its numerical value.
The shard id is currently built up by making the hash of the entity id, and then modulo the max amount of shards configured in ManagerConfig.

To import and use `make` from the "ShardId" module:

```ts
import * as ShardId from "@effect/cluster/ShardId"
// Can be accessed like this
ShardId.make
```

**Signature**

```ts
export declare function make(value: number): ShardId
```
