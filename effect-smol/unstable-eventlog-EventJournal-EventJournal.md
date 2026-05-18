Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.EventJournal

Context service for storing and replaying event journal entries.

The service writes local entries, imports entries from remote journals, exposes
a stream of local changes, and provides per-store locking.

**Signature**

```ts
declare class EventJournal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L44)

Since v4.0.0