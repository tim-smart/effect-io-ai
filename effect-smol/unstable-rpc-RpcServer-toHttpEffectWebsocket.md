Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.toHttpEffectWebsocket

Starts an RPC server for a group and returns the HTTP effect that upgrades
requests to the websocket RPC protocol.

**Signature**

```ts
declare const toHttpEffectWebsocket: <Rpcs extends Rpc.Any>(group: RpcGroup.RpcGroup<Rpcs>, options?: { readonly disableTracing?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly disableFatalDefects?: boolean | undefined; } | undefined) => Effect.Effect<Effect.Effect<HttpServerResponse.HttpServerResponse, never, Scope.Scope | HttpServerRequest.HttpServerRequest>, never, Scope.Scope | RpcSerialization.RpcSerialization | Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs> | Rpc.ServicesServer<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L1234)

Since v4.0.0