## ShardId

A shard is a logical grouping of multiple entities. There could be thousands of entities in your system,
so instead of managing every single entity id, the shard manager group them by shard id, and when they are assigned
or moved around, we always move all the entities with the same shard id.

**Signature**

```ts
declare class ShardId
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardId.ts#L33)

Since v1.0.0