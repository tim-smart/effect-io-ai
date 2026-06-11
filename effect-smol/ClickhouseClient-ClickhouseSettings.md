Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.ClickhouseSettings

Fiber reference containing ClickHouse settings to attach to queries,
commands, and inserts.

**Signature**

```ts
declare const ClickhouseSettings: Context.Reference<Partial<ClickHouseServerSettings> & Partial<ClickHouseHTTPSettings> & Record<string, string | number | boolean | Clickhouse.SettingsMap | undefined>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L428)

Since v4.0.0