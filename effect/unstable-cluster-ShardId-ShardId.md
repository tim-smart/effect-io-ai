Package: `effect`<br />
Module: `ShardId`<br />

## ShardId.ShardId

Identifier for a shard within a shard group, with equality, hashing, and primary
key behavior based on the `group:id` string form.

**Signature**

```ts
export interface ShardId extends Equal.Equal, Hash.Hash, PrimaryKey.PrimaryKey {
  readonly [TypeId]: typeof TypeId
  readonly group: string
  readonly id: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ShardId.ts#L26)

Since v4.0.0