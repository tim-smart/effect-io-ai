Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireUseRelease

This function is used to ensure that an `Effect` value that represents the
acquisition of a resource (for example, opening a file, launching a thread,
etc.) will not be interrupted, and that the resource will always be released
when the `Effect` value completes execution.

`acquireUseRelease` does the following:

  1. Ensures that the `Effect` value that acquires the resource will not be
     interrupted. Note that acquisition may still fail due to internal
     reasons (such as an uncaught exception).
  2. Ensures that the `release` `Effect` value will not be interrupted,
     and will be executed as long as the acquisition `Effect` value
     successfully acquires the resource.

During the time period between the acquisition and release of the resource,
the `use` `Effect` value will be executed.

If the `release` `Effect` value fails, then the entire `Effect` value will
fail, even if the `use` `Effect` value succeeds. If this fail-fast behavior
is not desired, errors produced by the `release` `Effect` value can be caught
and ignored.

**Example**

```ts
import { Console, Effect, Exit } from "effect"

interface Database {
  readonly connection: string
  readonly query: (sql: string) => Effect.Effect<string>
}

const program = Effect.acquireUseRelease(
  // Acquire - connect to database
  Effect.gen(function*() {
    yield* Console.log("Connecting to database...")
    return {
      connection: "db://localhost:5432",
      query: (sql: string) => Effect.succeed(`Result for: ${sql}`)
    }
  }),
  // Use - perform database operations
  (db) =>
    Effect.gen(function*() {
      yield* Console.log(`Connected to ${db.connection}`)
      const result = yield* db.query("SELECT * FROM users")
      yield* Console.log(`Query result: ${result}`)
      return result
    }),
  // Release - close database connection
  (db, exit) =>
    Effect.gen(function*() {
      if (Exit.isSuccess(exit)) {
        yield* Console.log(`Closing connection to ${db.connection} (success)`)
      } else {
        yield* Console.log(`Closing connection to ${db.connection} (failure)`)
      }
    })
)

Effect.runPromise(program)
// Output:
// Connecting to database...
// Connected to db://localhost:5432
// Query result: Result for: SELECT * FROM users
// Closing connection to db://localhost:5432 (success)
```

**Signature**

```ts
declare const acquireUseRelease: <Resource, E, R, A, E2, R2, E3, R3>(acquire: Effect<Resource, E, R>, use: (a: Resource) => Effect<A, E2, R2>, release: (a: Resource, exit: Exit.Exit<A, E2>) => Effect<void, E3, R3>) => Effect<A, E | E2 | E3, R | R2 | R3>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6266)

Since v2.0.0