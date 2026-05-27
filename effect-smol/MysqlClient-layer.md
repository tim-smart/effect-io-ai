Package: `@effect/sql-mysql2`<br />
Module: `MysqlClient`<br />

## MysqlClient.layer

Creates a layer from a concrete MySQL client configuration, providing both `MysqlClient` and `SqlClient`.

**Signature**

```ts
declare const layer: (config: MysqlClientConfig) => Layer.Layer<MysqlClient | Client.SqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlClient.ts#L453)

Since v4.0.0