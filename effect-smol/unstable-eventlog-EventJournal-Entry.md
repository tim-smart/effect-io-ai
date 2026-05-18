Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.Entry

Schema model for a committed event journal entry.

An entry records its ID, event tag, primary key, and MessagePack-encoded
payload, with helpers for array MessagePack encoding and creation timestamps.

**Signature**

```ts
declare class Entry
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L259)

Since v4.0.0