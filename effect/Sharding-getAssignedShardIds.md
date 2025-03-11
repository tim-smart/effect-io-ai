## getAssignedShardIds

Gets the list of shardIds assigned to the current Pod

**Signature**

```ts
declare const getAssignedShardIds: Effect.Effect<HashSet.HashSet<ShardId.ShardId>, never, Sharding>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L213)

Since v1.0.0