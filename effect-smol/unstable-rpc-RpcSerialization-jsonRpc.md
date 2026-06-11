Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.jsonRpc

Creates a JSON-RPC 2.0 serialization for RPC protocol messages without
additional message framing.

**Signature**

```ts
declare const jsonRpc: (options?: { readonly contentType?: string | undefined; }) => RpcSerialization["Service"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L123)

Since v4.0.0