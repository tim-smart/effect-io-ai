Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideServices

Provides a service map to an effect, fulfilling its service requirements.

**Details**

This function provides multiple services at once by supplying a service map
that contains all the required services. It removes the provided services
from the effect's requirements, making them available to the effect.

**Example**

```ts
import { Effect, ServiceMap } from "effect"

// Define service keys
const Logger = ServiceMap.Service<{
  log: (msg: string) => void
}>("Logger")
const Database = ServiceMap.Service<{
  query: (sql: string) => string
}>("Database")

// Create service map with multiple services
const serviceMap = ServiceMap.make(Logger, { log: console.log })
  .pipe(ServiceMap.add(Database, { query: () => "result" }))

// An effect that requires both services
const program = Effect.gen(function*() {
  const logger = yield* Effect.service(Logger)
  const db = yield* Effect.service(Database)
  logger.log("Querying database")
  return db.query("SELECT * FROM users")
})

const provided = Effect.provideServices(program, serviceMap)
```

**Signature**

```ts
declare const provideServices: { <XR>(context: ServiceMap.ServiceMap<XR>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, XR>>; <A, E, R, XR>(self: Effect<A, E, R>, context: ServiceMap.ServiceMap<XR>): Effect<A, E, Exclude<R, XR>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5678)

Since v2.0.0