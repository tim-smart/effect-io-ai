Package: `@effect/sql-sqlite-bun`<br />
Module: `SqliteClient`<br />

## SqliteClient.SqliteClientConfig

Configuration for a Bun SQLite client, including filename, open mode flags, WAL behavior, span attributes, and query/result name transforms.

**Signature**

```ts
export interface SqliteClientConfig {
  readonly filename: string
  readonly readonly?: boolean | undefined
  readonly create?: boolean | undefined
  readonly readwrite?: boolean | undefined
  readonly disableWAL?: boolean | undefined

  readonly spanAttributes?: Record<string, unknown> | undefined

  readonly transformResultNames?: ((str: string) => string) | undefined
  readonly transformQueryNames?: ((str: string) => string) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-bun/src/SqliteClient.ts#L118)

Since v4.0.0