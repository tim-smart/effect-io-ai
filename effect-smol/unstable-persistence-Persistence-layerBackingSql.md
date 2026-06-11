Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.layerBackingSql

Provides SQL-backed persistence using a shared `effect_persistence` table.

**Details**

Rows are partitioned by `store_id` and store JSON-encoded values with
optional expiration timestamps.

**Signature**

```ts
declare const layerBackingSql: Layer.Layer<BackingPersistence, never, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L511)

Since v4.0.0