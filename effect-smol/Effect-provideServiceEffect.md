Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideServiceEffect

Provides the effect with the single service it requires. If the effect
requires more than one service use `provide` instead.

This function is similar to `provideService`, but instead of providing a
static service implementation, it allows you to provide an effect that
will produce the service. This is useful when the service needs to be
acquired through an effectful computation (e.g., reading from a database,
making an HTTP request, or allocating resources).

**Example**

```ts
import { Console, Effect, ServiceMap } from "effect"

// Define a database connection service
interface DatabaseConnection {
  readonly query: (sql: string) => Effect.Effect<string>
}
const Database = ServiceMap.Service<DatabaseConnection>("Database")

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
declare const provideServiceEffect: { <I, S, E2, R2>(service: ServiceMap.Key<I, S>, acquire: Effect<S, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, Exclude<R, I> | R2>; <A, E, R, I, S, E2, R2>(self: Effect<A, E, R>, service: ServiceMap.Key<I, S>, acquire: Effect<S, E2, R2>): Effect<A, E | E2, Exclude<R, I> | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5953)

Since v2.0.0