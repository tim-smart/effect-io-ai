Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseClient`<br />

## ClickhouseClient.ClickhouseClientConfig

Configuration for creating a ClickHouse client, combining
`@clickhouse/client` options with optional span attributes and query/result
name transforms.

**Signature**

```ts
export interface ClickhouseClientConfig extends Clickhouse.ClickHouseClientConfigOptions {
  readonly spanAttributes?: Record<string, unknown> | undefined
  readonly transformResultNames?: ((str: string) => string) | undefined
  readonly transformQueryNames?: ((str: string) => string) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseClient.ts#L161)

Since v4.0.0