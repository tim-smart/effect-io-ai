Package: `@effect/cluster`<br />
Module: `ShardingEvent`<br />

## ShardingEvent.ShardsAssigned

Constructs the event that occurs when new shards are assigned to Pod.

**Signature**

```ts
declare const ShardsAssigned: (pod: PodAddress.PodAddress, shards: HashSet.HashSet<ShardId.ShardId>) => ShardsAssigned
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingEvent.ts#L24)

Since v1.0.0