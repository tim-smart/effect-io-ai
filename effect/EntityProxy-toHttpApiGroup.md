Package: `@effect/cluster`<br />
Module: `EntityProxy`<br />

## EntityProxy.toHttpApiGroup

Derives an `HttpApiGroup` from an `Entity`.

```ts
import { ClusterSchema, Entity, EntityProxy, EntityProxyServer } from "@effect/cluster"
import { HttpApi, HttpApiBuilder } from "@effect/platform"
import { Rpc } from "@effect/rpc"
import { Layer, Schema } from "effect"

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
const ApiLayer = HttpApiBuilder.api(MyApi).pipe(
  Layer.provide(EntityProxyServer.layerHttpApi(MyApi, "counter", Counter))
)
```

**Signature**

```ts
declare const toHttpApiGroup: <const Name extends string, Rpcs extends Rpc.Any>(name: Name, entity: Entity.Entity<Rpcs>) => HttpApiGroup.HttpApiGroup<Name, ConvertHttpApi<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/EntityProxy.ts#L147)

Since v1.0.0