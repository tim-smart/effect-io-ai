Package: `@effect/sql-sqlite-wasm`<br />
Module: `SqliteClient`<br />

## SqliteClient.layerMemoryConfig

Builds a layer from an Effect `Config` value, providing both the in-memory SQLite WASM `SqliteClient` service and the generic `SqlClient` service.

**Signature**

```ts
declare const layerMemoryConfig: (config: Config.Wrap<SqliteClientMemoryConfig>) => Layer.Layer<SqliteClient | Client.SqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-wasm/src/SqliteClient.ts#L493)

Since v4.0.0