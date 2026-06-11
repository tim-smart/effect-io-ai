Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.AckChunkEncoded

Serialized JSON shape of an `AckChunk` envelope.

**Signature**

```ts
export interface AckChunkEncoded {
  readonly _tag: "AckChunk"
  readonly id: string
  readonly address: {
    readonly shardId: {
      readonly group: string
      readonly id: number
    }
    readonly entityType: string
    readonly entityId: string
  }
  readonly requestId: string
  readonly replyId: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L187)

Since v4.0.0