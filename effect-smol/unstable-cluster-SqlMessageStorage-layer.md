Package: `effect`<br />
Module: `SqlMessageStorage`<br />

## SqlMessageStorage.layer

Layer that provides SQL-backed `MessageStorage` using the default table prefix
and the default snowflake generator.

**When to use**

Use when a cluster should persist mailbox messages and replies in SQL using
the default `cluster` table prefix and the standard snowflake generator.

**Details**

The layer runs the SQL migrations through `make`, provides `MessageStorage`,
and supplies `Snowflake.layerGenerator` internally. Callers still provide
`SqlClient` and `ShardingConfig`.

**Gotchas**

This layer always uses the `cluster` table prefix. Use `layerWith` before
deployment if you need a different stable prefix, because changing prefixes
later points the runtime at a different set of tables.

**See**

- `layerWith` for the same SQL storage layer with a custom table prefix
- `make` for the lower-level service constructor that uses an existing `Snowflake.Generator`

**Signature**

```ts
declare const layer: Layer.Layer<MessageStorage.MessageStorage, never, SqlClient.SqlClient | ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlMessageStorage.ts#L662)

Since v4.0.0