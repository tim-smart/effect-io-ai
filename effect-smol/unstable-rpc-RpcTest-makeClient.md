Package: `effect`<br />
Module: `RpcTest`<br />

## RpcTest.makeClient

Creates an in-memory RPC client for a group, backed by the group's handlers
from the environment and using the no-serialization test transport.

**Signature**

```ts
declare const makeClient: <Rpcs extends Rpc.Any, const Flatten extends boolean = false>(group: RpcGroup.RpcGroup<Rpcs>, options?: { readonly flatten?: Flatten | undefined; }) => Effect.Effect<Flatten extends true ? RpcClient.RpcClient.Flat<Rpcs> : RpcClient.RpcClient<Rpcs>, never, Scope.Scope | Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs> | Rpc.MiddlewareClient<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcTest.ts#L26)

Since v4.0.0