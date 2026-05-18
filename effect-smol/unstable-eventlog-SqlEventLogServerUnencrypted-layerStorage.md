Package: `effect`<br />
Module: `SqlEventLogServerUnencrypted`<br />

## SqlEventLogServerUnencrypted.layerStorage

Provides unencrypted server `Storage` using the SQL-backed implementation.

**Signature**

```ts
declare const layerStorage: (options?: { readonly entryTablePrefix?: string; readonly remoteIdTable?: string; readonly insertBatchSize?: number; }) => Layer.Layer<EventLogServerUnencrypted.Storage, SqlError.SqlError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventLogServerUnencrypted.ts#L456)

Since v4.0.0