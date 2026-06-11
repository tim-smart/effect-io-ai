Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.layerConfig

Provides both `ClickhouseClient` and generic `SqlClient` services from a
`Config`-backed ClickHouse client configuration.

**Signature**

```ts
declare const layerConfig: (config: Config.Wrap<ClickhouseClientConfig>) => Layer.Layer<ClickhouseClient | Client.SqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L441)

Since v4.0.0