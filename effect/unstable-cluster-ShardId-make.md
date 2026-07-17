Package: `effect`<br />
Module: `ShardId`<br />

## ShardId.make

Creates or reuses the cached `ShardId` for the specified shard group and numeric
id.

**When to use**

Use to create a `ShardId` when the shard group and numeric id are already
known, such as after a routing decision or after decoding stored shard-id
parts.

**Details**

Repeated calls with the same `group` and `id` return the same cached
`ShardId` instance. The returned value stores those fields, compares by
`group` and `id`, formats as `group:id`, and uses that string form for
hashing and primary keys.

**Gotchas**

`make` does not compute a shard from an entity id or check whether the shard
belongs to the current sharding configuration. Pass the shard group and
numeric id produced by the routing or storage layer.

**See**

- `toString` for formatting an existing shard id as `group:id`
- `fromString` for constructing a cached shard id from the `group:id` string form

**Signature**

```ts
declare const make: (group: string, id: number) => ShardId
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ShardId.ts#L90)

Since v4.0.0