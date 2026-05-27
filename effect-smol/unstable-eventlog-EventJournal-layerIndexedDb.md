Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.layerIndexedDb

Provides `EventJournal` using the IndexedDB-backed implementation created by
`makeIndexedDb`.

**Signature**

```ts
declare const layerIndexedDb: (options?: { readonly database?: string; }) => Layer.Layer<EventJournal, EventJournalError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L791)

Since v4.0.0