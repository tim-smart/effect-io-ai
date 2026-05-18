Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.makeEntryIdUnsafe

Generates a UUID v7 `EntryId`, optionally using the supplied millisecond
timestamp.

This is unsafe because the generated UUID bytes are cast to the brand without
schema validation.

**Signature**

```ts
declare const makeEntryIdUnsafe: (options?: { msecs?: number; }) => EntryId
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L235)

Since v4.0.0