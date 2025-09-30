Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.layerHttpRouter

Create a RPC server that registers a HTTP route with a `HttpLayerRouter`.

It defaults to using websockets for communication, but can be configured to
use HTTP.

**Signature**

```ts
declare const layerHttpRouter: <Rpcs extends Rpc.Any>(options: { readonly group: RpcGroup.RpcGroup<Rpcs>; readonly path: HttpRouter.PathInput; readonly protocol?: "http" | "websocket" | undefined; readonly disableTracing?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly concurrency?: number | "unbounded" | undefined; }) => Layer.Layer<never, never, RpcSerialization.RpcSerialization | HttpLayerRouter.HttpRouter | Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L740)

Since v1.0.0