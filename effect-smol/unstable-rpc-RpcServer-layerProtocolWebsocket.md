Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolWebsocket

RPC protocol that uses WebSockets for communication.

**Signature**

```ts
declare const layerProtocolWebsocket: (options: { readonly path: HttpRouter.PathInput; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization | HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L953)

Since v4.0.0