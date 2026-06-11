Package: `effect`<br />
Module: `EventLogMessage`<br />

## EventLogMessage.ChunkedMessage

Represents one part of a large encoded event-log payload.

**When to use**

Use to divide data into chunks and `join` to reassemble all chunks with
the same id once every part has arrived.

**Signature**

```ts
declare class ChunkedMessage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogMessage.ts#L164)

Since v4.0.0