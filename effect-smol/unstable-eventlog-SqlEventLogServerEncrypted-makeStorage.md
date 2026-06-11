Package: `effect`<br />
Module: `SqlEventLogServerEncrypted`<br />

## SqlEventLogServerEncrypted.makeStorage

Creates encrypted event-log server `Storage` backed by SQL.

**Details**

It persists the server remote id, session authentication bindings, and encrypted
entries in dialect-specific tables, creating per-identity/store entry tables as
needed.

**Signature**

```ts
declare const makeStorage: (options?: { readonly entryTablePrefix?: string; readonly remoteIdTable?: string; readonly insertBatchSize?: number; }) => Effect.Effect<EventLogServerEncrypted.Storage["Service"], SqlError.SqlError, SqlClient.SqlClient | EventLogEncryption.EventLogEncryption | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventLogServerEncrypted.ts#L38)

Since v4.0.0