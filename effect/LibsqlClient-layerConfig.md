Package: `@effect/sql-libsql`<br />
Module: `LibsqlClient`<br />

## LibsqlClient.layerConfig

Creates a layer from a `Config`-wrapped libSQL client configuration, providing both `LibsqlClient` and `SqlClient`.

**Signature**

```ts
declare const layerConfig: (config: Config.Wrap<LibsqlClientConfig>) => Layer.Layer<LibsqlClient | Client.SqlClient, Config.ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlClient.ts#L354)

Since v4.0.0