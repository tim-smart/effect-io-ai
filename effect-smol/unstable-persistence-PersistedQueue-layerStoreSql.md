Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.layerStoreSql

Provides a SQL-backed `PersistedQueueStore` using `makeStoreSql`.

**Signature**

```ts
declare const layerStoreSql: (options?: { readonly tableName?: string | undefined; readonly pollInterval?: Duration.Input | undefined; readonly lockRefreshInterval?: Duration.Input | undefined; readonly lockExpiration?: Duration.Input | undefined; } | undefined) => Layer.Layer<PersistedQueueStore, SqlError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L1196)

Since v4.0.0