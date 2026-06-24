Package: `@effect/sql-sqlite-bun`<br />
Module: `SqliteClient`<br />

## SqliteClient.layer

Creates a layer from a concrete Bun SQLite client configuration, providing both `SqliteClient` and `SqlClient`.

**Signature**

```ts
declare const layer: (config: SqliteClientConfig) => Layer.Layer<SqliteClient | Client.SqlClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-bun/src/SqliteClient.ts#L260)

Since v4.0.0