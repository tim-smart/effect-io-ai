Package: `effect`<br />
Module: `Layer`<br />

## Layer.merge

Merges this layer with the specified layer concurrently, producing a new layer with combined input and output types.

This is a binary version of `mergeAll` that merges exactly two layers or one layer with an array of layers.
The layers are built concurrently and their outputs are combined.

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

const mergedLayer = Layer.merge(dbLayer, loggerLayer)
```

**Signature**

```ts
declare const merge: { <RIn, E, ROut>(that: Layer<ROut, E, RIn>): <RIn2, E2, ROut2>(self: Layer<ROut2, E2, RIn2>) => Layer<ROut | ROut2, E | E2, RIn | RIn2>; <const Layers extends [Any, ...Array<Any>]>(that: Layers): <A, E, R>(self: Layer<A, E, R>) => Layer<A | Success<Layers[number]>, E | Error<Layers[number]>, Services<Layers[number]> | R>; <RIn2, E2, ROut2, RIn, E, ROut>(self: Layer<ROut2, E2, RIn2>, that: Layer<ROut, E, RIn>): Layer<ROut | ROut2, E | E2, RIn | RIn2>; <A, E, R, const Layers extends [Any, ...Array<Any>]>(self: Layer<A, E, R>, that: Layers): Layer<A | Success<Layers[number]>, E | Error<Layers[number]>, Services<Layers[number]> | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L963)

Since v2.0.0