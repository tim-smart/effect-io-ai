Package: `effect`<br />
Module: `Layer`<br />

## Layer.fromBuild

Constructs a Layer from a function that uses a `MemoMap` and `Scope` to build the layer.

The function receives a `MemoMap` for memoization and a `Scope` for resource management.
A child scope is created, and if the build fails, the child scope is closed.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const databaseLayer = Layer.fromBuild(() =>
  Effect.sync(() =>
    Context.make(Database, {
      query: (sql: string) => Effect.succeed("result")
    })
  )
)
```

**Signature**

```ts
declare const fromBuild: <ROut, E, RIn>(build: (memoMap: MemoMap, scope: Scope.Scope) => Effect<Context.Context<ROut>, E, RIn>) => Layer<ROut, E, RIn>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L250)

Since v4.0.0