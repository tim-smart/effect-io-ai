Package: `effect`<br />
Module: `Layer`<br />

## Layer.mergeAll

Combines all the provided layers concurrently, creating a new layer with merged input, error, and output types.

All layers are built concurrently, and their outputs are merged into a single layer.
This is useful when you need to combine multiple independent layers.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends ServiceMap.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

const dbLayer = Layer.succeed(Database)({
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
})
const loggerLayer = Layer.succeed(Logger)({
  log: Effect.fn("Logger.log")((msg: string) => Effect.sync(() => console.log(msg)))
})

const mergedLayer = Layer.mergeAll(dbLayer, loggerLayer)
```

**Signature**

```ts
declare const mergeAll: <Layers extends [Layer<never, any, any>, ...Array<Layer<never, any, any>>]>(...layers: Layers) => Layer<Success<Layers[number]>, Error<Layers[number]>, Services<Layers[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L953)

Since v2.0.0