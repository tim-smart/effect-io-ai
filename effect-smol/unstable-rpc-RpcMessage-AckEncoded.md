Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.AckEncoded

The transport-encoded acknowledgement for a streamed RPC response chunk.

**Signature**

```ts
export interface AckEncoded {
  readonly _tag: "Ack"
  readonly requestId: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L128)

Since v4.0.0