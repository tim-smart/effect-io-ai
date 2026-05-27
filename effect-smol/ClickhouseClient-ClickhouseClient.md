Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.ClickhouseClient

ClickHouse-specific `SqlClient` extension with access to its configuration,
typed parameter fragments, command-mode execution, insert queries, and
per-effect query ID and ClickHouse settings.

**Signature**

```ts
export interface ClickhouseClient extends Client.SqlClient {
  readonly [TypeId]: TypeId
  readonly config: ClickhouseClientConfig
  readonly param: (dataType: string, value: unknown) => Statement.Fragment
  readonly asCommand: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  readonly insertQuery: <T = unknown>(options: {
    readonly table: string
    readonly values: Clickhouse.InsertValues<Readable, T>
    readonly format?: Clickhouse.DataFormat
  }) => Effect.Effect<Clickhouse.InsertResult, SqlError>
  readonly withQueryId: {
    (queryId: string): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
    <A, E, R>(effect: Effect.Effect<A, E, R>, queryId: string): Effect.Effect<A, E, R>
  }
  readonly withClickhouseSettings: {
    (
      settings: NonNullable<Clickhouse.BaseQueryParams["clickhouse_settings"]>
    ): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
    <A, E, R>(
      effect: Effect.Effect<A, E, R>,
      settings: NonNullable<Clickhouse.BaseQueryParams["clickhouse_settings"]>
    ): Effect.Effect<A, E, R>
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L136)

Since v4.0.0