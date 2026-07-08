Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideServiceEffect

Provides one service to an effect using an effectful acquisition.

**When to use**

Use when the service implementation must be created by an effect and its
acquisition failure should remain in the returned effect.

**Details**

`provideServiceEffect` runs the acquisition effect to produce the service
implementation, removes that service from the wrapped effect's requirements,
and leaves any other requirements to be provided later. Acquisition failures
are included in the returned effect's error channel.

**Example** (Providing a service with an effect)

```ts
import { Console, Context, Effect } from "effect"

// Define a database connection service
interface DatabaseConnection {
  readonly query: (sql: string) => Effect.Effect<string>
}
const Database = Context.Service<DatabaseConnection>("Database")

// Effect that creates a database connection
const createConnection = Effect.gen(function*() {
  yield* Console.log("Establishing database connection...")
  yield* Effect.sleep("100 millis") // Simulate connection time
  yield* Console.log("Database connected!")
  return {
    query: (sql: string) => Effect.succeed(`Result for: ${sql}`)
  }
})

const program = Effect.gen(function*() {
  const db = yield* Effect.service(Database)
  return yield* db.query("SELECT * FROM users")
})

// Provide the service through an effect
const withDatabase = Effect.provideServiceEffect(
  program,
  Database,
  createConnection
)

Effect.runPromise(withDatabase).then(console.log)
// Output:
// Establishing database connection...
// Database connected!
// Result for: SELECT * FROM users
```

**Signature**

```ts
declare const provideServiceEffect: { <I, S, E2, R2>(service: Context.Key<I, S>, acquire: Effect<S, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, Exclude<R, I> | R2>; <A, E, R, I, S, E2, R2>(self: Effect<A, E, R>, service: Context.Key<I, S>, acquire: Effect<S, E2, R2>): Effect<A, E | E2, Exclude<R, I> | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6297)

Since v2.0.0