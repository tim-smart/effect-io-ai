Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolWebsocket

A rpc protocol that uses websockets for communication.

**Signature**

```ts
declare const layerProtocolWebsocket: <I = HttpRouter.Default>(options: { readonly path: HttpRouter.PathInput; readonly routerTag?: HttpRouter.HttpRouter.TagClass<I, string, any, any>; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L813)

Since v1.0.0