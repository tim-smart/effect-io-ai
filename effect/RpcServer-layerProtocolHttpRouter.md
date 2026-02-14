Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolHttpRouter

A rpc protocol that uses streaming http for communication.

Uses a `HttpLayerRouter` to provide the http endpoint.

**Signature**

```ts
declare const layerProtocolHttpRouter: (options: { readonly path: HttpRouter.PathInput; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization | HttpLayerRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L1205)

Since v1.0.0