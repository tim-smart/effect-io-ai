Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.layerBackingSqlMultiTable

Provides SQL-backed persistence using one table per store id.

**Details**

Each table is created if needed and stores JSON-encoded values with optional
expiration timestamps.

**Signature**

```ts
declare const layerBackingSqlMultiTable: Layer.Layer<BackingPersistence, never, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L312)

Since v4.0.0