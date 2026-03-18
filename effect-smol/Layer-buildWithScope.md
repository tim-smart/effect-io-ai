Package: `effect`<br />
Module: `Layer`<br />

## Layer.buildWithScope

Builds a layer into an `Effect` value. Any resources associated with this
layer will be released when the specified scope is closed unless their scope
has been extended. This allows building layers where the lifetime of some of
the services output by the layer exceed the lifetime of the effect the
layer is provided to.

**Example**

```ts
import { Effect, Layer, Scope, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Build a layer with explicit scope control
const program = Effect.gen(function*() {
  const scope = yield* Effect.scope

  const dbLayer = Layer.effect(Database)(Effect.gen(function*() {
    console.log("Initializing database...")
    yield* Scope.addFinalizer(
      scope,
      Effect.sync(() => console.log("Database closed"))
    )
    return { query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Result: ${sql}`)) }
  }))

  // Build with specific scope - resources tied to this scope
  const services = yield* Layer.buildWithScope(dbLayer, scope)
  const database = ServiceMap.get(services, Database)

  return yield* database.query("SELECT * FROM users")
  // Database will be closed when scope is closed
})
```

**Signature**

```ts
declare const buildWithScope: { (scope: Scope.Scope): <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect<ServiceMap.ServiceMap<ROut>, E, RIn>; <RIn, E, ROut>(self: Layer<ROut, E, RIn>, scope: Scope.Scope): Effect<ServiceMap.ServiceMap<ROut>, E, RIn>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L553)

Since v2.0.0