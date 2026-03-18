Package: `effect`<br />
Module: `Layer`<br />

## Layer.orDie

Translates effect failure into death of the fiber, making all failures
unchecked and not a part of the type of the layer.

**Example**

```ts
import { Data, Effect, Layer, ServiceMap } from "effect"

class DatabaseError extends Data.TaggedError("DatabaseError")<{
  message: string
}> {}

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Layer that can fail during construction
const flakyDatabaseLayer = Layer.effect(Database)(Effect.gen(function*() {
  // Simulate a database connection that might fail
  const shouldFail = Math.random() > 0.5
  if (shouldFail) {
    return yield* new DatabaseError({ message: "Connection failed" })
  }

  return { query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Result: ${sql}`)) }
}))

// Convert failures to fiber death - removes error from type
const reliableDatabaseLayer = flakyDatabaseLayer.pipe(Layer.orDie)

// Now the layer type is Layer<Database, never, never> - no error in type
const program = Effect.gen(function*() {
  const database = yield* Database
  return yield* database.query("SELECT * FROM users")
}).pipe(
  Effect.provide(reliableDatabaseLayer)
)

// If the database layer fails, the entire fiber will die
// instead of the effect failing with DatabaseError
```

**Signature**

```ts
declare const orDie: <A, E, R>(self: Layer<A, E, R>) => Layer<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1441)

Since v2.0.0