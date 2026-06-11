Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ResponseChunkEncoded

The transport-encoded response message containing a non-empty batch of stream
chunk values for a request.

**Signature**

```ts
export interface ResponseChunkEncoded {
  readonly _tag: "Chunk"
  readonly requestId: string
  readonly values: NonEmptyReadonlyArray<unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L230)

Since v4.0.0