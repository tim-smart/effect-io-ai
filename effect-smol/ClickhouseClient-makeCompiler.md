Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.makeCompiler

Creates the SQL statement compiler for ClickHouse, emitting typed
`{pN: Type}` placeholders and escaping identifiers with an optional query
name transform.

**Signature**

```ts
declare const makeCompiler: (transform?: (_: string) => string) => Statement.Compiler
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L507)

Since v4.0.0