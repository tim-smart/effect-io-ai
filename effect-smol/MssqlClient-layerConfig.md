Package: `@effect/sql-mssql`<br />
Module: `MssqlClient`<br />

## MssqlClient.layerConfig

Creates a layer from a `Config`-wrapped SQL Server client configuration, providing both `MssqlClient` and `SqlClient`.

**Signature**

```ts
declare const layerConfig: (config: Config.Wrap<MssqlClientConfig>) => Layer.Layer<Client.SqlClient | MssqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/MssqlClient.ts#L625)

Since v4.0.0