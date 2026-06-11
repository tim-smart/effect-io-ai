Package: `effect`<br />
Module: `SqlEventJournal`<br />

## SqlEventJournal.layer

Provides `EventJournal` using the SQL-backed implementation created by
`make`.

**When to use**

Use when composing a Layer graph that should provide a persistent SQL-backed
`EventJournal` from an existing `SqlClient` service.

**Details**

The layer delegates to `make(options)`, so the same optional `entryTable` and
`remotesTable` settings are used and construction requires `SqlClient` and
may fail with `SqlError`.

**Gotchas**

Layer construction performs the same minimal `CREATE TABLE IF NOT EXISTS`
setup as `make`; manage indexes and schema migrations outside this layer when
your SQL schema needs more than the built-in tables.

**See**

- `make` for constructing the SQL-backed service directly
- `EventJournal.layerMemory` for an in-memory `EventJournal` layer
- `EventJournal.layerIndexedDb` for an IndexedDB-backed `EventJournal` layer

**Signature**

```ts
declare const layer: (options?: { readonly entryTable?: string; readonly remotesTable?: string; }) => Layer.Layer<EventJournal.EventJournal, SqlError.SqlError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlEventJournal.ts#L311)

Since v4.0.0