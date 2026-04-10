Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.layerHttp

Create a RPC server that registers a HTTP route with a `HttpRouter`.

It defaults to using websockets for communication, but can be configured to
use HTTP.

**Signature**

```ts
declare const layerHttp: <Rpcs extends Rpc.Any>(options: { readonly group: RpcGroup.RpcGroup<Rpcs>; readonly path: HttpRouter.PathInput; readonly protocol?: "http" | "websocket" | undefined; readonly disableTracing?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly concurrency?: number | "unbounded" | undefined; readonly disableFatalDefects?: boolean | undefined; }) => Layer.Layer<never, never, RpcSerialization.RpcSerialization | HttpRouter.HttpRouter | Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs> | Rpc.ServicesServer<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L736)

Since v4.0.0