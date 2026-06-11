Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.FromServerEncoded

Transport-encoded messages that can be sent from an RPC server to a client.

**Signature**

```ts
type FromServerEncoded = | ResponseChunkEncoded
  | ResponseExitEncoded
  | ResponseDefectEncoded
  | Pong
  | ClientProtocolError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L192)

Since v4.0.0