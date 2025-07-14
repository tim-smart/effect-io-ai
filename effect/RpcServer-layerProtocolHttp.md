Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolHttp

A rpc protocol that uses streaming http for communication.

**Signature**

```ts
declare const layerProtocolHttp: <I = HttpRouter.Default>(options: { readonly path: HttpRouter.PathInput; readonly routerTag?: HttpRouter.HttpRouter.TagClass<I, string, any, any>; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L1139)

Since v1.0.0