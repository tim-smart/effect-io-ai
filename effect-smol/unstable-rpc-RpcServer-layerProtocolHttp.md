Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolHttp

A rpc protocol that uses websockets for communication.

**Signature**

```ts
declare const layerProtocolHttp: (options: { readonly path: HttpRouter.PathInput; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization | HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L1070)

Since v4.0.0