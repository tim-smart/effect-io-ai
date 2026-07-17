Package: `effect`<br />
Module: `EventLogMessage`<br />

## EventLogMessage.ChangesRpc

RPC used to stream remote event-log changes for a public key and store id
starting at a sequence number.

**Details**

Responses are encoded as either `SingleMessage` values or `ChunkedMessage`
parts.

**Signature**

```ts
declare class ChangesRpc
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogMessage.ts#L323)

Since v4.0.0