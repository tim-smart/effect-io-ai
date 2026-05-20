Package: `effect`<br />
Module: `Layer`<br />

## Layer.orDie

Converts layer construction failures into defects, removing them from the
layer's error type.

**Details**

Use this only when failures should be treated as unrecoverable defects rather
than typed errors that callers can handle.

**Example** (Converting layer failures to defects)

```ts
import { Context, Data, Effect, Layer } from "effect"

class DatabaseError extends Data.TaggedError("DatabaseError")<{
  message: string
}> {}

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Layer that can fail during construction
const flakyDatabaseLayer = Layer.effect(Database, Effect.gen(function*() {
  console.log("connecting")
  return yield* new DatabaseError({ message: "Connection failed" })
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

// Running the program prints "connecting", then the DatabaseError is
// converted into a fiber defect instead of remaining a typed error.
```

**Signature**

```ts
declare const orDie: <A, E, R>(self: Layer<A, E, R>) => Layer<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1710)

Since v2.0.0