Package: `effect`<br />
Module: `EventLogServer`<br />

## EventLogServer.ChunkedMessageState

Annotation that stores partial `ChunkedMessage` data while chunked writes are
being reassembled.

**When to use**

Use to keep per-client chunk assembly state while handling chunked event-log
writes.

**Signature**

```ts
declare class ChunkedMessageState
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServer.ts#L243)

Since v4.0.0