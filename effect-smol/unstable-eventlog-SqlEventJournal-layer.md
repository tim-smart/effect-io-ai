Package: `effect`<br />
Module: `SqlEventJournal`<br />

## SqlEventJournal.layer

Provides `EventJournal` using the SQL-backed implementation created by
`make`.

**Signature**

```ts
declare const layer: (options?: { readonly entryTable?: string; readonly remotesTable?: string; }) => Layer.Layer<EventJournal.EventJournal, SqlError.SqlError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventJournal.ts#L301)

Since v4.0.0