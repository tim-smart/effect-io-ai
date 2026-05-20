Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.makeRemoteIdUnsafe

Generates a new random `RemoteId`.

**Gotchas**

This is unsafe because the generated UUID bytes are cast to the brand without
schema validation.

**Signature**

```ts
declare const makeRemoteIdUnsafe: () => RemoteId
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L182)

Since v4.0.0