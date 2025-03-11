## ShardsUnassigned

Constructs the event that occurs when shards are unassigned to a Pod

**Signature**

```ts
declare const ShardsUnassigned: (pod: PodAddress.PodAddress, shards: HashSet.HashSet<ShardId.ShardId>) => ShardsUnassigned
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingEvent.ts#L46)

Since v1.0.0