Package: `effect`<br />
Module: `Layer`<br />

## Layer.buildWithMemoMap

Builds a layer into an `Effect` value, using the specified `MemoMap` to memoize
the layer construction.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends ServiceMap.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

// Build layers with explicit memoization control
const program = Effect.gen(function*() {
  const memoMap = yield* Layer.makeMemoMap
  const scope = yield* Effect.scope

  // Build database layer with memoization
  const dbLayer = Layer.succeed(Database)({
    query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
  })
  const dbServices = yield* Layer.buildWithMemoMap(dbLayer, memoMap, scope)

  // Build logger layer with same memoization (reuses memo if same layer)
  const loggerLayer = Layer.succeed(Logger)({
    log: Effect.fn("Logger.log")((msg: string) => Effect.sync(() => console.log(msg)))
  })
  const loggerServices = yield* Layer.buildWithMemoMap(
    loggerLayer,
    memoMap,
    scope
  )

  return {
    database: ServiceMap.get(dbServices, Database),
    logger: ServiceMap.get(loggerServices, Logger)
  }
})
```

**Signature**

```ts
declare const buildWithMemoMap: { (memoMap: MemoMap, scope: Scope.Scope): <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect<ServiceMap.ServiceMap<ROut>, E, RIn>; <RIn, E, ROut>(self: Layer<ROut, E, RIn>, memoMap: MemoMap, scope: Scope.Scope): Effect<ServiceMap.ServiceMap<ROut>, E, RIn>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L449)

Since v2.0.0