Package: `effect`<br />
Module: `EntityProxy`<br />

## EntityProxy.toHttpApiGroup

Derives an `HttpApiGroup` from an `Entity`.

```ts
import { Layer, Schema } from "effect"
import {
  ClusterSchema,
  Entity,
  EntityProxy,
  EntityProxyServer
} from "effect/unstable/cluster"
import { HttpApi, HttpApiBuilder } from "effect/unstable/httpapi"
import { Rpc } from "effect/unstable/rpc"

export const Counter = Entity.make("Counter", [
  Rpc.make("Increment", {
    payload: { id: Schema.String, amount: Schema.Number },
    primaryKey: ({ id }) => id,
    success: Schema.Number
  })
]).annotateRpcs(ClusterSchema.Persisted, true)

// Use EntityProxy.toHttpApiGroup to create a `HttpApiGroup` from the
// Counter entity
export class MyApi extends HttpApi.make("api")
  .add(
    EntityProxy.toHttpApiGroup("counter", Counter)
      .prefix("/counter")
  )
{}

// Use EntityProxyServer.layerHttpApi to create a layer that implements
// the handlers for the HttpApiGroup
const ApiLayer = HttpApiBuilder.layer(MyApi).pipe(
  Layer.provide(EntityProxyServer.layerHttpApi(MyApi, "counter", Counter))
)
```

**Signature**

```ts
declare const toHttpApiGroup: <const Name extends string, Type extends string, Rpcs extends Rpc.Any>(name: Name, entity: Entity.Entity<Type, Rpcs>) => HttpApiGroup.HttpApiGroup<Name, ConvertHttpApi<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityProxy.ts#L172)

Since v4.0.0