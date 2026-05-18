Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.MemoryDriver

In-memory message storage driver with inspectable backing state.

It provides a `MessageStorage` service, the encoded driver implementation, and
maps used to track requests, primary keys, unprocessed envelopes, reply IDs,
and the journal.

**Signature**

```ts
declare class MemoryDriver
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L810)

Since v4.0.0