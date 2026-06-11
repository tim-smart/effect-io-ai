Package: `effect`<br />
Module: `Layer`<br />

## Layer.buildWithScope

Builds a layer using an explicit scope.

**When to use**

Use to control the lifetime of layer resources with a scope supplied by the
caller.

**Details**

Resources created by the layer are released when the supplied scope is
closed, unless a resource extends its own scope.

**Example** (Building a layer with an explicit scope)

```ts
import { Context, Effect, Layer, Scope } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Build a layer with explicit scope control
const program = Effect.gen(function*() {
  const scope = yield* Effect.scope

  const dbLayer = Layer.effect(Database, Effect.gen(function*() {
    console.log("Initializing database...")
    yield* Scope.addFinalizer(
      scope,
      Effect.sync(() => console.log("Database closed"))
    )
    return { query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Result: ${sql}`)) }
  }))

  // Build with specific scope - resources tied to this scope
  const context = yield* Layer.buildWithScope(dbLayer, scope)
  const database = Context.get(context, Database)

  return yield* database.query("SELECT * FROM users")
  // Database will be closed when scope is closed
})
```

**Signature**

```ts
declare const buildWithScope: { (scope: Scope.Scope): <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect<Context.Context<ROut>, E, RIn>; <RIn, E, ROut>(self: Layer<ROut, E, RIn>, scope: Scope.Scope): Effect<Context.Context<ROut>, E, RIn>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L732)

Since v2.0.0