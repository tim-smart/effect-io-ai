Package: `@effect/sql-mysql2`<br />
Module: `MysqlClient`<br />

## MysqlClient.MysqlClient

mysql2-backed SQL client service, extending `SqlClient` with its runtime type marker and client configuration.

**Signature**

```ts
export interface MysqlClient extends Client.SqlClient {
  readonly [TypeId]: TypeId
  readonly config: MysqlClientConfig
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlClient.ts#L181)

Since v4.0.0