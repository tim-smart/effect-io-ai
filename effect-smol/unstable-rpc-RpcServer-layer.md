Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.layer

Provides a scoped layer that starts an RPC server for a group using the
current server `Protocol`.

**Signature**

```ts
declare const layer: <Rpcs extends Rpc.Any>(group: RpcGroup.RpcGroup<Rpcs>, options?: { readonly disableTracing?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly concurrency?: number | "unbounded" | undefined; readonly disableFatalDefects?: boolean | undefined; }) => Layer.Layer<never, never, Protocol | Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs> | Rpc.ServicesServer<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L768)

Since v4.0.0