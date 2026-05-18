Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.make

Creates a scoped `ClickhouseClient`, verifies connectivity with `SELECT 1`,
closes the underlying client when the scope ends, maps ClickHouse failures
to `SqlError`, and aborts plus kills in-flight queries when interrupted.

**Signature**

```ts
declare const make: (options: ClickhouseClientConfig) => Effect.Effect<ClickhouseClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L175)

Since v4.0.0