Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.PartialRequestEncoded

Serialized JSON shape of a request envelope.

**Details**

Identifiers are encoded as strings and the RPC payload remains unknown until
decoded with the RPC schema.

**Signature**

```ts
export interface PartialRequestEncoded {
  readonly _tag: "Request"
  readonly requestId: string
  readonly address: {
    readonly shardId: {
      readonly group: string
      readonly id: number
    }
    readonly entityType: string
    readonly entityId: string
  }
  readonly tag: string
  readonly payload: unknown
  readonly headers: ReadonlyRecord<string, string>
  readonly traceId?: string
  readonly spanId?: string
  readonly sampled?: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L139)

Since v4.0.0