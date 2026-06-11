Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.makeRemoteIdUnsafe

Generates a new random `RemoteId`.

**When to use**

Use when generating a fresh event-log remote id internally and the UUID bytes
are trusted to satisfy the brand.

**Gotchas**

This is unsafe because the generated UUID bytes are cast to the brand without
schema validation.

**Signature**

```ts
declare const makeRemoteIdUnsafe: () => RemoteId
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L181)

Since v4.0.0