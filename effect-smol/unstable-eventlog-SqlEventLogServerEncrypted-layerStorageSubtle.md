Package: `effect`<br />
Module: `SqlEventLogServerEncrypted`<br />

## SqlEventLogServerEncrypted.layerStorageSubtle

Provides SQL-backed encrypted server `Storage` and supplies the default Web
Crypto `EventLogEncryption` layer.

**Signature**

```ts
declare const layerStorageSubtle: (options?: { readonly entryTablePrefix?: string; readonly remoteIdTable?: string; readonly insertBatchSize?: number; }) => Layer.Layer<EventLogServerEncrypted.Storage, SqlError.SqlError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventLogServerEncrypted.ts#L329)

Since v4.0.0