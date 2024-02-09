# makeWithTTL

Makes a new pool with the specified minimum and maximum sizes and time to
live before a pool whose excess items are not being used will be shrunk
down to the minimum size. The pool is returned in a `Scope`, which governs
the lifetime of the pool. When the pool is shutdown because the `Scope` is
used, the individual items allocated by the pool will be released in some
unspecified order.

```ts
import { createConnection } from "mysql2"
import { Duration, Effect, Pool } from "effect"

const acquireDBConnection = Effect.acquireRelease(
  Effect.sync(() => createConnection("mysql://...")),
  (connection) => Effect.sync(() => connection.end(() => {}))
)

const connectionPool = Effect.flatMap(
  Pool.makeWithTTL({
    acquire: acquireDBConnection,
    min: 10,
    max: 20,
    timeToLive: Duration.seconds(60)
  }),
  (pool) => pool.get
)
```

To import and use `makeWithTTL` from the "Pool" module:

```ts
import * as Pool from "effect/Pool"
// Can be accessed like this
Pool.makeWithTTL
```

**Signature**

```ts
export declare const makeWithTTL: <A, E, R>(options: {
  readonly acquire: Effect.Effect<A, E, R>
  readonly min: number
  readonly max: number
  readonly timeToLive: Duration.DurationInput
}) => Effect.Effect<Pool<A, E>, never, Scope.Scope | R>
```
