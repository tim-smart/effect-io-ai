Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.layerConfig

Creates a layer from a `Config`-wrapped PostgreSQL pool configuration, providing both `PgClient` and `SqlClient`.

**Signature**

```ts
declare const layerConfig: (config: Config.Wrap<PgPoolConfig>) => Layer.Layer<PgClient | Client.SqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L795)

Since v4.0.0