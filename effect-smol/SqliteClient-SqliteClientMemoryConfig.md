Package: `@effect/sql-sqlite-wasm`<br />
Module: `SqliteClient`<br />

## SqliteClient.SqliteClientMemoryConfig

Configuration for an in-memory SQLite WASM client, including optional reactivity hooks, span attributes, and query/result name transforms.

**Signature**

```ts
export interface SqliteClientMemoryConfig {
  readonly installReactivityHooks?: boolean
  readonly spanAttributes?: Record<string, unknown>
  readonly transformResultNames?: (str: string) => string
  readonly transformQueryNames?: (str: string) => string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/do/src/SqliteClient.ts#L89)

Since v4.0.0