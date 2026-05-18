Package: `@effect/sql-mysql2`<br />
Module: `MysqlClient`<br />

## MysqlClient.layerConfig

Creates a layer from a `Config`-wrapped MySQL client configuration, providing both `MysqlClient` and `SqlClient`.

**Signature**

```ts
declare const layerConfig: (config: Config.Wrap<MysqlClientConfig>) => Layer.Layer<MysqlClient | Client.SqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlClient.ts#L419)

Since v4.0.0