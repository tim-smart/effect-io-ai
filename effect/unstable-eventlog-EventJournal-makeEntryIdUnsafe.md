Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.makeEntryIdUnsafe

Generates a UUID v7 `EntryId`, optionally using the supplied millisecond
timestamp.

**When to use**

Use when generating an event-log entry id internally and the UUID v7 bytes
are trusted to satisfy the brand.

**Gotchas**

This is unsafe because the generated UUID bytes are cast to the brand without
schema validation.

**Signature**

```ts
declare const makeEntryIdUnsafe: (options?: { msecs?: number; }) => EntryId
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventJournal.ts#L249)

Since v4.0.0