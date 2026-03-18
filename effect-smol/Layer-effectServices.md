Package: `effect`<br />
Module: `Layer`<br />

## Layer.effectServices

Constructs a layer from the specified scoped effect, which must return one
or more services.

This allows you to create a Layer from an effectful computation that returns
multiple services. The Effect is executed in the scope of the layer.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<
  Database,
  { readonly query: (sql: string) => Effect.Effect<string> }
>()("Database") {}

const layer = Layer.effectServices(
  Effect.succeed(ServiceMap.make(Database, {
    query: (sql: string) => Effect.succeed(`Query: ${sql}`)
  }))
)
```

**Signature**

```ts
declare const effectServices: <A, E, R>(effect: Effect<ServiceMap.ServiceMap<A>, E, R>) => Layer<A, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L813)

Since v2.0.0