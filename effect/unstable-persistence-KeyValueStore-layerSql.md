Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.layerSql

Provides a SQL-backed `KeyValueStore`.

**Details**

The layer creates the configured table if it does not exist and stores both
string and binary values through the current `SqlClient`.

**Signature**

```ts
declare const layerSql: (options?: LayerSqlOptions) => Layer.Layer<KeyValueStore, never, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyValueStore.ts#L472)

Since v4.0.0