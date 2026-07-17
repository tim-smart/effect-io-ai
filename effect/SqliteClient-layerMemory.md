Package: `@effect/sql-sqlite-wasm`<br />
Module: `SqliteClient`<br />

## SqliteClient.layerMemory

Builds a layer from an in-memory SQLite WASM client configuration, providing both `SqliteClient` and the generic `SqlClient` service.

**Signature**

```ts
declare const layerMemory: (config: SqliteClientMemoryConfig) => Layer.Layer<SqliteClient | Client.SqlClient, SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-wasm/src/SqliteClient.ts#L513)

Since v4.0.0