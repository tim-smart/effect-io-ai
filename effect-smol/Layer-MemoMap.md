Package: `effect`<br />
Module: `Layer`<br />

## Layer.MemoMap

A MemoMap is used to memoize layer construction and ensure sharing of layers.

The MemoMap prevents duplicate construction of the same layer instance,
enabling efficient resource sharing across layer dependencies.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Create a custom MemoMap for manual layer building
const program = Effect.gen(function*() {
  const memoMap = yield* Layer.makeMemoMap
  const scope = yield* Effect.scope

  const dbLayer = Layer.succeed(Database)({
    query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
  })
  const services = yield* Layer.buildWithMemoMap(dbLayer, memoMap, scope)

  return ServiceMap.get(services, Database)
})
```

**Signature**

```ts
export interface MemoMap {
  readonly [MemoMapTypeId]: typeof MemoMapTypeId
  readonly getOrElseMemoize: <RIn, E, ROut>(
    layer: Layer<ROut, E, RIn>,
    scope: Scope.Scope,
    build: (memoMap: MemoMap, scope: Scope.Scope) => Effect<ServiceMap.ServiceMap<ROut>, E, RIn>
  ) => Effect<ServiceMap.ServiceMap<ROut>, E, RIn>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L143)

Since v2.0.0