Package: `@effect/sql-sqlite-bun`<br />
Module: `SqliteClient`<br />

## SqliteClient.layerConfig

Creates a layer from a `Config`-wrapped Bun SQLite client configuration, providing both `SqliteClient` and `SqlClient`.

**Signature**

```ts
declare const layerConfig: (config: Config.Wrap<SqliteClientConfig>) => Layer.Layer<SqliteClient | Client.SqlClient, Config.ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-bun/src/SqliteClient.ts#L266)

Since v4.0.0