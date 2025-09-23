Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolWebsocketRouter

A rpc protocol that uses websockets for communication.

Uses a `HttpLayerRouter` to provide the websocket endpoint.

**Signature**

```ts
declare const layerProtocolWebsocketRouter: (options: { readonly path: HttpLayerRouter.PathInput; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization | HttpLayerRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L907)

Since v1.0.0