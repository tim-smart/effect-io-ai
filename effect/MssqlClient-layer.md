Package: `@effect/sql-mssql`<br />
Module: `MssqlClient`<br />

## MssqlClient.layer

Creates a layer from a concrete SQL Server client configuration, providing both `MssqlClient` and `SqlClient`.

**Signature**

```ts
declare const layer: (config: MssqlClientConfig) => Layer.Layer<Client.SqlClient | MssqlClient, never | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mssql/src/MssqlClient.ts#L638)

Since v4.0.0