Package: `@effect/sql-sqlite-bun`<br />
Module: `SqliteClient`<br />

## SqliteClient.SqliteClient

Bun SQLite client service, extending `SqlClient` with database export and extension loading helpers. `updateValues` is not supported.

**Signature**

```ts
export interface SqliteClient extends Client.SqlClient {
  readonly [TypeId]: TypeId
  readonly config: SqliteClientConfig
  readonly export: Effect.Effect<Uint8Array, SqlError>
  readonly loadExtension: (path: string) => Effect.Effect<void, SqlError>

  /** Not supported in sqlite */
  readonly updateValues: never
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-bun/src/SqliteClient.ts#L90)

Since v4.0.0