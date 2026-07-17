Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerNdJsonRpc

RPC serialization layer that uses newline-delimited JSON-RPC for
serialization.

**Signature**

```ts
declare const layerNdJsonRpc: (options?: { readonly contentType?: string | undefined; }) => Layer.Layer<RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcSerialization.ts#L531)

Since v4.0.0