Package: `effect`<br />
Module: `Layer`<br />

## Layer.merge

Merges this layer with another layer concurrently, producing a new layer with
combined input, error, and output types.

**When to use**

Use to combine an existing `Layer` with another `Layer` or an array of
layers while preserving pipeline style.

**Details**

This is a binary version of `mergeAll` that merges exactly two layers or one
layer with an array of layers. The layers are built concurrently and their
outputs are combined.

**Example** (Merging two layers)

```ts
import { Context, Effect, Layer } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends Context.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

const dbLayer = Layer.succeed(Database, {
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
})
const loggerLayer = Layer.succeed(Logger, {
  log: Effect.fn("Logger.log")((msg: string) => Effect.sync(() => console.log(msg)))
})

const mergedLayer = Layer.merge(dbLayer, loggerLayer)
```

**See**

- `mergeAll` for merging several layers at once

**Signature**

```ts
declare const merge: { <RIn, E, ROut>(that: Layer<ROut, E, RIn>): <RIn2, E2, ROut2>(self: Layer<ROut2, E2, RIn2>) => Layer<ROut | ROut2, E | E2, RIn | RIn2>; <const Layers extends [Any, ...Array<Any>]>(that: Layers): <A, E, R>(self: Layer<A, E, R>) => Layer<A | Success<Layers[number]>, E | Error<Layers[number]>, Services<Layers[number]> | R>; <RIn2, E2, ROut2, RIn, E, ROut>(self: Layer<ROut2, E2, RIn2>, that: Layer<ROut, E, RIn>): Layer<ROut | ROut2, E | E2, RIn | RIn2>; <A, E, R, const Layers extends [Any, ...Array<Any>]>(self: Layer<A, E, R>, that: Layers): Layer<A | Success<Layers[number]>, E | Error<Layers[number]>, Services<Layers[number]> | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L1245)

Since v2.0.0