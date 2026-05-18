Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.RequestId

A branded request identifier used to correlate RPC requests, responses,
chunks, acknowledgements, and interrupts.

**Signature**

```ts
type RequestId = Branded<bigint, "~effect/rpc/RpcMessage/RequestId">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L51)

Since v4.0.0