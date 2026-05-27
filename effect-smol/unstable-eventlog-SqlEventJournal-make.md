Package: `effect`<br />
Module: `SqlEventJournal`<br />

## SqlEventJournal.make

Creates an `EventJournal` backed by a SQL database.

**Details**

The constructor creates the entry and remote metadata tables when needed,
persists local and remote entries, and uses the configured `SqlClient`.

**Signature**

```ts
declare const make: (options?: { readonly entryTable?: string; readonly remotesTable?: string; }) => Effect.Effect<EventJournal.EventJournal["Service"], SqlError.SqlError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventJournal.ts#L60)

Since v4.0.0