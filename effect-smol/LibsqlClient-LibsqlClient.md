Package: `@effect/sql-libsql`<br />
Module: `LibsqlClient`<br />

## LibsqlClient.LibsqlClient

libSQL-backed SQL client service, extending `SqlClient` with its runtime type marker and client configuration.

**Signature**

```ts
export interface LibsqlClient extends Client.SqlClient {
  readonly [TypeId]: TypeId
  readonly config: LibsqlClientConfig
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlClient.ts#L81)

Since v4.0.0