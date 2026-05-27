Package: `effect`<br />
Module: `SqlEventLogServerUnencrypted`<br />

## SqlEventLogServerUnencrypted.makeStorage

Creates unencrypted event-log server `Storage` backed by SQL.

**Details**

The implementation creates tables for the server remote id, store sequences,
entries, and session authentication bindings, then persists and streams
plaintext remote entries.

**Signature**

```ts
declare const makeStorage: (options?: { readonly entryTablePrefix?: string; readonly remoteIdTable?: string; readonly insertBatchSize?: number; }) => Effect.Effect<EventLogServerUnencrypted.Storage["Service"], SqlError.SqlError, SqlClient.SqlClient | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventLogServerUnencrypted.ts#L66)

Since v4.0.0