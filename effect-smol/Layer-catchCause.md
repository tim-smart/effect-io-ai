Package: `effect`<br />
Module: `Layer`<br />

## Layer.catchCause

Recovers from all errors.

**Example**

```ts
import { Data, Effect, Layer, Context } from "effect"

class DatabaseError extends Data.TaggedError("DatabaseError")<{
  message: string
}> {}

class NetworkError extends Data.TaggedError("NetworkError")<{
  reason: string
}> {}

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends Context.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

// Primary database layer that might fail
const primaryDatabaseLayer = Layer.effect(Database)(Effect.gen(function*() {
  return yield* new DatabaseError({ message: "Primary DB unreachable" })
  return { query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Primary: ${sql}`)) }
}))

// Fallback layers for different error causes
const databaseWithFallback = primaryDatabaseLayer.pipe(
  Layer.catchCause(() => {
    // For any cause/error, fallback to in-memory database
    return Layer.mergeAll(
      Layer.succeed(Database)({
        query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Memory: ${sql}`))
      }),
      Layer.succeed(Logger)({
        log: Effect.fn("Logger.log")((msg: string) =>
          Effect.sync(() => console.log(`[FALLBACK] ${msg}`))
        )
      })
    )
  })
)

const program = Effect.gen(function*() {
  const database = yield* Database
  return yield* database.query("SELECT * FROM users")
}).pipe(
  Effect.provide(databaseWithFallback)
)
```

**Signature**

```ts
declare const catchCause: { <E, RIn2, E2, ROut2>(onError: (cause: Cause.Cause<E>) => Layer<ROut2, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut & ROut2, E2, RIn2 | RIn>; <RIn, E, ROut, RIn2, E2, ROut22>(self: Layer<ROut, E, RIn>, onError: (cause: Cause.Cause<E>) => Layer<ROut22, E2, RIn2>): Layer<ROut & ROut22, E2, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1655)

Since v2.0.0