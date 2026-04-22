Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideContext

Provides a context to an effect, fulfilling its service requirements.

**Details**

This function provides multiple services at once by supplying a context
that contains all the required services. It removes the provided services
from the effect's requirements, making them available to the effect.

**Example**

```ts
import { Effect, Context } from "effect"

// Define service keys
const Logger = Context.Service<{
  log: (msg: string) => void
}>("Logger")
const Database = Context.Service<{
  query: (sql: string) => string
}>("Database")

// Create a context with multiple services
const context = Context.make(Logger, { log: console.log })
  .pipe(Context.add(Database, { query: () => "result" }))

// An effect that requires both services
const program = Effect.gen(function*() {
  const logger = yield* Effect.service(Logger)
  const db = yield* Effect.service(Database)
  logger.log("Querying database")
  return db.query("SELECT * FROM users")
})

const provided = Effect.provideContext(program, context)
```

**Signature**

```ts
declare const provideContext: { <XR>(context: Context.Context<XR>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, XR>>; <A, E, R, XR>(self: Effect<A, E, R>, context: Context.Context<XR>): Effect<A, E, Exclude<R, XR>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5727)

Since v2.0.0