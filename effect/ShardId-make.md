Package: `@effect/cluster`<br />
Module: `ShardId`<br />

## ShardId.make

Constructs a shard id from its numerical value.
The shard id is currently built up by making the hash of the entity id, and then modulo the max amount of shards configured in ManagerConfig.

**Signature**

```ts
declare const make: (value: number) => ShardId
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardId.ts#L66)

Since v1.0.0