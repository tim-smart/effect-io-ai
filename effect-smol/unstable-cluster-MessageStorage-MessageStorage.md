Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.MessageStorage

Service for cluster mailbox persistence and reply delivery.

It stores outgoing requests, control envelopes, and replies; reads unprocessed
messages; manages reply handlers; and provides transaction wrapping for storage
operations.

**Signature**

```ts
declare class MessageStorage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L61)

Since v4.0.0