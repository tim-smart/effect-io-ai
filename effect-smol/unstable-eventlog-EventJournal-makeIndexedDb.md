Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.makeIndexedDb

Creates an `EventJournal` backed by IndexedDB.

**Details**

The journal stores entries and remote replication metadata in the configured
browser database, publishes local changes, and requires `Scope` so the database
connection can be closed when the scope ends.

**Signature**

```ts
declare const makeIndexedDb: (options?: { readonly database?: string; }) => Effect.Effect<EventJournal["Service"], EventJournalError, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L517)

Since v4.0.0