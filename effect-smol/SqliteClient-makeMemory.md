Package: `@effect/sql-sqlite-wasm`<br />
Module: `SqliteClient`<br />

## SqliteClient.makeMemory

Creates a scoped in-memory SQLite WASM client using the memory VFS, serializing access through a semaphore and exposing database `export` and `import` operations.

**Signature**

```ts
declare const makeMemory: (options: SqliteClientMemoryConfig) => Effect.Effect<SqliteClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/do/src/SqliteClient.ts#L146)

Since v4.0.0