Package: `@effect/sql-sqlite-bun`<br />
Module: `SqliteClient`<br />

## SqliteClient.make

Creates a scoped Bun SQLite client for a database file, enabling WAL by default and serializing access. Streaming queries are not implemented.

**Signature**

```ts
declare const make: (options: SqliteClientConfig) => Effect.Effect<SqliteClient, never, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-bun/src/SqliteClient.ts#L106)

Since v4.0.0