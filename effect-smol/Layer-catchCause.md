Package: `effect`<br />
Module: `Layer`<br />

## Layer.catchCause

Recovers from any failure cause by switching to another layer.

**Details**
The handler receives the full `Cause` of the failed layer, including typed
errors, defects, and interruption information, and returns the fallback layer
to build instead.

**Example** (Recovering from layer failures by cause)

```ts
import { Data, Effect, Layer, Context } from "effect"

class DatabaseError extends Data.TaggedError("DatabaseError")<{
  message: string
}> {}

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const primaryDatabaseLayer = Layer.effect(Database)(
  Effect.fail(new DatabaseError({ message: "Primary DB unreachable" }))
)

const databaseWithFallback = primaryDatabaseLayer.pipe(
  Layer.catchCause(() => {
    return Layer.succeed(Database)({
      query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Memory: ${sql}`))
    })
  })
)

const program = Effect.gen(function*() {
  const database = yield* Database
  const result = yield* database.query("SELECT * FROM users")
  console.log(result)
}).pipe(
  Effect.provide(databaseWithFallback)
)

Effect.runPromise(program)
// Memory: SELECT * FROM users
```

**Signature**

```ts
declare const catchCause: { <E, RIn2, E2, ROut2>(onError: (cause: Cause.Cause<E>) => Layer<ROut2, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut & ROut2, E2, RIn2 | RIn>; <RIn, E, ROut, RIn2, E2, ROut22>(self: Layer<ROut, E, RIn>, onError: (cause: Cause.Cause<E>) => Layer<ROut22, E2, RIn2>): Layer<ROut & ROut22, E2, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1739)

Since v2.0.0