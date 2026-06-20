Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.make

Creates a `LayerMap` that dynamically provides resources based on a key.

**Example** (Creating a layer map)

```ts
import { Context, Effect, Layer, LayerMap } from "effect"

// Define a service key
const DatabaseService = Context.Service<{
  readonly query: (sql: string) => Effect.Effect<string>
}>("Database")

// Create a LayerMap that provides different database configurations
const program = Effect.gen(function*() {
  const layerMap = yield* LayerMap.make(
    (env: string) =>
      Layer.succeed(DatabaseService)({
        query: Effect.fn("DatabaseService.query")((sql) => Effect.succeed(`${env}: ${sql}`))
      }),
    { idleTimeToLive: "5 seconds" }
  )

  // Get a layer for a specific environment
  const devLayer = layerMap.get("development")

  // Use the layer to provide the service
  const result = yield* Effect.provide(
    Effect.gen(function*() {
      const db = yield* DatabaseService
      return yield* db.query("SELECT * FROM users")
    }),
    devLayer
  )

  console.log(result) // "development: SELECT * FROM users"
})
```

**Signature**

```ts
declare const make: <K, L extends Layer.Layer<any, any, any>, PreloadKeys extends Iterable<K> | undefined = undefined>(lookup: (key: K) => L, options?: { readonly idleTimeToLive?: IdleTimeToLiveInput<K> | undefined; readonly preloadKeys?: PreloadKeys; } | undefined) => Effect.Effect<LayerMap<K, Layer.Success<L>, Layer.Error<L>>, PreloadKeys extends undefined ? never : Layer.Error<L>, Scope.Scope | Layer.Services<L>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L135)

Since v3.14.0