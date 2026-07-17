Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.MemoryEntry

In-memory storage entry for a request envelope.

**Details**

It stores the encoded envelope, last acknowledged chunk, accumulated replies,
and optional delivery time.

**Signature**

```ts
type MemoryEntry = {
  readonly envelope: Envelope.Encoded
  lastReceivedChunk: Reply.ChunkEncoded | undefined
  replies: Array<Reply.Encoded>
  deliverAt: number | null
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MessageStorage.ts#L799)

Since v4.0.0