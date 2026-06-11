Package: `effect`<br />
Module: `EntityAddress`<br />

## EntityAddress.make

Constructs an `EntityAddress` from a shard ID, entity type, and entity ID.

**When to use**

Use to create the routing target for a known entity type and entity id after
resolving that id to the `ShardId` assigned by the entity's shard group.

**Details**

The returned `EntityAddress` stores the supplied `shardId`, `entityType`, and
`entityId`. Equality and hashing include all three fields.

**Gotchas**

`make` does not choose the shard for an entity. Use the same shard group
logic as the entity definition; a different `shardId` makes a different
address even when the entity type and entity id match.

**See**

- `EntityAddress` for the equality, hashing, and string formatting behavior of constructed addresses
- `ShardId` for the shard identifier included in the address

**Signature**

```ts
declare const make: (options: { readonly shardId: ShardId; readonly entityType: EntityType; readonly entityId: EntityId; }) => EntityAddress
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityAddress.ts#L89)

Since v4.0.0