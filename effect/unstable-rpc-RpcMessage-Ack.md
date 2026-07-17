Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.Ack

A decoded acknowledgement for a streamed RPC response chunk.

**Signature**

```ts
export interface Ack {
  readonly _tag: "Ack"
  readonly requestId: RequestId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMessage.ts#L95)

Since v4.0.0