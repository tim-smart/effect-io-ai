Package: `effect`<br />
Module: `EntityAddress`<br />

## EntityAddress.make

Constructs an `EntityAddress` from a shard ID, entity type, and entity ID.

**Signature**

```ts
declare const make: (options: { readonly shardId: ShardId; readonly entityType: EntityType; readonly entityId: EntityId; }) => EntityAddress
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityAddress.ts#L83)

Since v4.0.0