# ShardsAssigned

Constructs the event that occurs when new shards are assigned to Pod.

To import and use `ShardsAssigned` from the "ShardingEvent" module:

```ts
import * as ShardingEvent from "@effect/cluster/ShardingEvent"
// Can be accessed like this
ShardingEvent.ShardsAssigned
```

**Signature**

```ts
export declare function ShardsAssigned(
  pod: PodAddress.PodAddress,
  shards: HashSet.HashSet<ShardId.ShardId>
): ShardsAssigned
```
