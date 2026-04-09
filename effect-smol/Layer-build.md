Package: `effect`<br />
Module: `Layer`<br />

## Layer.build

Builds a layer into a scoped value.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Build a layer to get its services
const program = Effect.gen(function*() {
  const dbLayer = Layer.succeed(Database)({
    query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
  })

  // Build the layer into Context - automatically manages scope and memoization
  const context = yield* Layer.build(dbLayer)

  // Extract the specific service from the built layer
  const database = Context.get(context, Database)

  return yield* database.query("SELECT * FROM users")
})
```

**Signature**

```ts
declare const build: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect<Context.Context<ROut>, E, RIn | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L525)

Since v2.0.0