Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.ClientMethod

Fiber reference read by the low-level ClickHouse connection to choose query
or command execution for statements; defaults to `query`.

**Signature**

```ts
declare const ClientMethod: Context.Reference<"query" | "command" | "insert">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L408)

Since v4.0.0