Package: `effect`<br />
Module: `SqlEventLogServerEncrypted`<br />

## SqlEventLogServerEncrypted.layerStorage

Provides encrypted server `Storage` using the SQL-backed implementation.

**Signature**

```ts
declare const layerStorage: (options?: { readonly entryTablePrefix?: string; readonly remoteIdTable?: string; readonly insertBatchSize?: number; }) => Layer.Layer<EventLogServerEncrypted.Storage, SqlError.SqlError, SqlClient.SqlClient | EventLogEncryption.EventLogEncryption>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventLogServerEncrypted.ts#L319)

Since v4.0.0