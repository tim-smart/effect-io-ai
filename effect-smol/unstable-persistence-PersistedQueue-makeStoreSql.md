Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.makeStoreSql

Creates a SQL-backed `PersistedQueueStore`.

**Details**

The store creates the queue table and indexes, acquires rows with
per-worker locks, refreshes active locks while scoped takes are running, and
retries or completes rows according to the processing exit.

**Signature**

```ts
declare const makeStoreSql: (options?: { readonly tableName?: string | undefined; readonly pollInterval?: Duration.Input | undefined; readonly lockRefreshInterval?: Duration.Input | undefined; readonly lockExpiration?: Duration.Input | undefined; } | undefined) => Effect.Effect<PersistedQueueStore["Service"], SqlError, SqlClient.SqlClient | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L751)

Since v4.0.0