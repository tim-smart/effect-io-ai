Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.LayerMap

A scoped, keyed map of layer-built service contexts.

**Details**

A `LayerMap` builds resources for a key on demand, exposes them as a `Layer`
or scoped `Context`, and can invalidate cached resources for a key.

**Example** (Managing keyed layers)

```ts
import { Context, Effect, Layer, LayerMap } from "effect"

// Define a service key
const DatabaseService = Context.Service<{
  readonly query: (sql: string) => Effect.Effect<string>
}>("Database")

// Create a LayerMap that provides different database configurations
const createDatabaseLayerMap = LayerMap.make((env: string) =>
  Layer.succeed(DatabaseService)({
    query: Effect.fn("DatabaseService.query")((sql) => Effect.succeed(`${env}: ${sql}`))
  })
)

// Use the LayerMap
const program = Effect.gen(function*() {
  const layerMap = yield* createDatabaseLayerMap

  // Get a layer for a specific environment
  const devLayer = layerMap.get("development")

  // Get context directly
  const context = yield* layerMap.contextEffect("production")

  // Invalidate a cached layer
  yield* layerMap.invalidate("development")
})
```

**Signature**

```ts
export interface LayerMap<in out K, in out I, in out E = never> {
  readonly [TypeId]: typeof TypeId

  /**
   * The internal RcMap that stores the resources.
   */
  readonly rcMap: RcMap.RcMap<K, Context.Context<I>, E>

  /**
   * Retrieves a Layer for the resources associated with the key.
   */
  get(key: K): Layer.Layer<I, E>

  /**
   * Retrieves the context associated with the key.
   */
  contextEffect(key: K): Effect.Effect<Context.Context<I>, E, Scope.Scope>

  /**
   * Invalidates the resource associated with the key.
   */
  invalidate(key: K): Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L93)

Since v3.14.0