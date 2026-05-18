Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.make

Runs an RPC server for a group using the current server `Protocol`, decoding
requests, invoking handlers, encoding responses, and managing in-flight
request lifetime.

**Signature**

```ts
declare const make: <Rpcs extends Rpc.Any>(group: RpcGroup.RpcGroup<Rpcs>, options?: { readonly disableTracing?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly concurrency?: number | "unbounded" | undefined; readonly disableFatalDefects?: boolean | undefined; } | undefined) => Effect.Effect<never, never, Protocol | Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs> | Rpc.ServicesServer<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L508)

Since v4.0.0