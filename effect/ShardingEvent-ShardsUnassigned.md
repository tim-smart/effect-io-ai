# ShardsUnassigned

Constructs the event that occurs when shards are unassigned to a Pod

To import and use `ShardsUnassigned` from the "ShardingEvent" module:

ts
import \* as ShardingEvent from "@effect/cluster/ShardingEvent"
// Can be accessed like this
ShardingEvent.ShardsUnassigned
undefined

**Signature**

```ts
export declare function ShardsUnassigned(
  pod: PodAddress.PodAddress,
  shards: HashSet.HashSet<ShardId.ShardId>
): ShardsUnassigned
```
