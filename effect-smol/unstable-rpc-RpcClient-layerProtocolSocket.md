Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.layerProtocolSocket

Provides a client `Protocol` backed by the current `Socket` and
`RpcSerialization` services.

**Signature**

```ts
declare const layerProtocolSocket: (options?: { readonly retryTransientErrors?: boolean | undefined; }) => Layer.Layer<Protocol, never, Socket.Socket | RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L1178)

Since v4.0.0