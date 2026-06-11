Package: `effect`<br />
Module: `Entity`<br />

## Entity.makeTestClient

Builds an in-memory test client for an entity layer.

**Details**

The returned function creates a no-serialization RPC client for each entity ID,
using a test sharding service instead of the cluster transport.

**Signature**

```ts
declare const makeTestClient: <Type extends string, Rpcs extends Rpc.Any, LA, LE, LR>(entity: Entity<Type, Rpcs>, layer: Layer.Layer<LA, LE, LR>) => Effect.Effect<(entityId: string) => Effect.Effect<RpcClient.RpcClient<Rpcs>>, LE, Scope | ShardingConfig | Exclude<LR, Sharding> | Rpc.MiddlewareClient<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L597)

Since v4.0.0