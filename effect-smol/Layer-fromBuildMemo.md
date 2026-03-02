Package: `effect`<br />
Module: `Layer`<br />

## Layer.fromBuildMemo

Constructs a Layer from a function that uses a `MemoMap` and `Scope` to build the layer,
with automatic memoization.

This is similar to `fromBuild` but provides automatic memoization of the layer construction.
The layer will be memoized based on the provided `MemoMap`.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const databaseLayer = Layer.fromBuildMemo(() =>
  Effect.sync(() =>
    ServiceMap.make(Database, {
      query: (sql: string) => Effect.succeed("result")
    })
  )
)
```

**Signature**

```ts
declare const fromBuildMemo: <ROut, E, RIn>(build: (memoMap: MemoMap, scope: Scope.Scope) => Effect<ServiceMap.ServiceMap<ROut>, E, RIn>) => Layer<ROut, E, RIn>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L266)

Since v4.0.0