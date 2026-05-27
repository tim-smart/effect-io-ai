Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.layer

Provides both `ClickhouseClient` and generic `SqlClient` services from a
ClickHouse client configuration.

**Signature**

```ts
declare const layer: (config: ClickhouseClientConfig) => Layer.Layer<ClickhouseClient | Client.SqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L486)

Since v4.0.0