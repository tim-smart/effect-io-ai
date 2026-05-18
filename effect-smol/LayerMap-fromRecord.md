Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.fromRecord

Creates a `LayerMap` from a record of predefined layers.

**Details**

The record keys become the keys accepted by the returned `LayerMap`, and the
record values are the layers built for those keys.

**Example** (Creating a layer map from a record)

```ts
import { Effect, Layer, LayerMap, Context } from "effect"

// Define service keys
const DevDatabase = Context.Service<{
  readonly query: (sql: string) => Effect.Effect<string>
}>("DevDatabase")

const ProdDatabase = Context.Service<{
  readonly query: (sql: string) => Effect.Effect<string>
}>("ProdDatabase")

// Create predefined layers
const layers = {
  development: Layer.succeed(DevDatabase)({
    query: Effect.fn("DevDatabase.query")((sql) => Effect.succeed(`DEV: ${sql}`))
  }),
  production: Layer.succeed(ProdDatabase)({
    query: Effect.fn("ProdDatabase.query")((sql) => Effect.succeed(`PROD: ${sql}`))
  })
} as const

// Create a LayerMap from the record
const program = Effect.gen(function*() {
  const layerMap = yield* LayerMap.fromRecord(layers, {
    idleTimeToLive: "10 seconds"
  })

  // Get layers by key
  const devLayer = layerMap.get("development")
  const prodLayer = layerMap.get("production")

  console.log("LayerMap created from record")
})
```

**Signature**

```ts
declare const fromRecord: <const Layers extends Record<string, Layer.Layer<any, any, any>>, const Preload extends boolean = false>(layers: Layers, options?: { readonly idleTimeToLive?: IdleTimeToLiveInput<keyof Layers> | undefined; readonly preload?: Preload | undefined; } | undefined) => Effect.Effect<LayerMap<keyof Layers, Layer.Success<Layers[keyof Layers]>, Layer.Error<Layers[keyof Layers]>>, Preload extends true ? Layer.Error<Layers[keyof Layers]> : never, Scope.Scope | (Layers[keyof Layers] extends Layer.Layer<infer _A, infer _E, infer _R> ? _R : never)>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L249)

Since v3.14.0