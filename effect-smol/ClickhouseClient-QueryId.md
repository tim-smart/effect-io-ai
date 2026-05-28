Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.QueryId

Fiber reference for the ClickHouse `query_id` applied to queries and
inserts; a random UUID is generated when no query ID is set.

**Signature**

```ts
declare const QueryId: Context.Reference<string | undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L442)

Since v4.0.0