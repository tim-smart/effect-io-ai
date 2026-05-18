Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.makeRemoteIdUnsafe

Generates a new random `RemoteId`.

This is unsafe because the generated UUID bytes are cast to the brand without
schema validation.

**Signature**

```ts
declare const makeRemoteIdUnsafe: () => RemoteId
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L174)

Since v4.0.0