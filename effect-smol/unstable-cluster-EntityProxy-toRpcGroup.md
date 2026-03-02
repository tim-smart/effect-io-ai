Package: `effect`<br />
Module: `EntityProxy`<br />

## EntityProxy.toRpcGroup

Derives an `RpcGroup` from an `Entity`.

```ts
import { Layer, Schema } from "effect"
import {
  ClusterSchema,
  Entity,
  EntityProxy,
  EntityProxyServer
} from "effect/unstable/cluster"
import { Rpc, RpcServer } from "effect/unstable/rpc"

export const Counter = Entity.make("Counter", [
  Rpc.make("Increment", {
    payload: { id: Schema.String, amount: Schema.Number },
    primaryKey: ({ id }) => id,
    success: Schema.Number
  })
]).annotateRpcs(ClusterSchema.Persisted, true)

// Use EntityProxy.toRpcGroup to create a `RpcGroup` from the Counter entity
export class MyRpcs extends EntityProxy.toRpcGroup(Counter) {}

// Use EntityProxyServer.layerRpcHandlers to create a layer that implements
// the rpc handlers
const RpcServerLayer = RpcServer.layer(MyRpcs).pipe(
  Layer.provide(EntityProxyServer.layerRpcHandlers(Counter))
)
```

**Signature**

```ts
declare const toRpcGroup: <Type extends string, Rpcs extends Rpc.Any>(entity: Entity.Entity<Type, Rpcs>) => RpcGroup.RpcGroup<ConvertRpcs<Rpcs, Type>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityProxy.ts#L53)

Since v4.0.0