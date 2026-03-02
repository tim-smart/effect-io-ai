Package: `effect`<br />
Module: `Layer`<br />

## Layer.fromBuild

Constructs a Layer from a function that uses a `MemoMap` and `Scope` to build the layer.

The function receives a `MemoMap` for memoization and a `Scope` for resource management.
A child scope is created, and if the build fails, the child scope is closed.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const databaseLayer = Layer.fromBuild(() =>
  Effect.sync(() =>
    ServiceMap.make(Database, {
      query: (sql: string) => Effect.succeed("result")
    })
  )
)
```

**Signature**

```ts
declare const fromBuild: <ROut, E, RIn>(build: (memoMap: MemoMap, scope: Scope.Scope) => Effect<ServiceMap.ServiceMap<ROut>, E, RIn>) => Layer<ROut, E, RIn>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L225)

Since v4.0.0