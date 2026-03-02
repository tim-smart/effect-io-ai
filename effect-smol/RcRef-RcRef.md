Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.RcRef

A reference counted reference that manages resource lifecycle.

An RcRef wraps a resource that can be acquired and released multiple times.
The resource is lazily acquired on the first call to `get` and automatically
released when the last reference is released.

**Example**

```ts
import { Effect, RcRef } from "effect"

// Create an RcRef for a database connection
const createConnectionRef = (connectionString: string) =>
  RcRef.make({
    acquire: Effect.acquireRelease(
      Effect.succeed(`Connected to ${connectionString}`),
      (connection) => Effect.log(`Closing connection: ${connection}`)
    )
  })

// Use the RcRef in multiple operations
const program = Effect.gen(function*() {
  const connectionRef = yield* createConnectionRef("postgres://localhost")

  // Multiple gets will share the same connection
  const connection1 = yield* RcRef.get(connectionRef)
  const connection2 = yield* RcRef.get(connectionRef)

  return [connection1, connection2]
})
```

**Signature**

```ts
export interface RcRef<out A, out E = never> extends Pipeable {
  readonly [TypeId]: RcRef.Variance<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcRef.ts#L47)

Since v3.5.0