Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ResponseChunk

The decoded response message containing a non-empty batch of stream chunk
values for a specific client and request.

**Signature**

```ts
export interface ResponseChunk<A extends Rpc.Any> {
  readonly _tag: "Chunk"
  readonly clientId: number
  readonly requestId: RequestId
  readonly values: NonEmptyReadonlyArray<Rpc.SuccessChunk<A>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L251)

Since v4.0.0