Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.ShardGroup

Annotation that selects the shard group for an entity id.

**Details**

By default, every entity id is assigned to the `"default"` shard group.

**Signature**

```ts
declare const ShardGroup: Context.Reference<(entityId: EntityId) => string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L115)

Since v4.0.0