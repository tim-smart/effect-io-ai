# makeWithTTL

Makes a new pool with the specified minimum and maximum sizes and time to
live before a pool whose excess items are not being used will be shrunk
down to the minimum size. The pool is returned in a `Scope`, which governs
the lifetime of the pool. When the pool is shutdown because the `Scope` is
used, the individual items allocated by the pool will be released in some
unspecified order.

```ts
import * as Duration from '@effect/data/Duration'
import * as Effect from '@effect/io/Effect'
import * as Pool from '@effect/io/Pool'
import * as Scope from '@effect/io/Scope'
import { pipe } from '@effect/data/Function'

Effect.scoped(
  pipe(
    Pool.make(acquireDbConnection, 10, 20, Duration.seconds(60)),
    Effect.flatMap((pool) =>
      Effect.scoped(
        pipe(
          pool.get(),
          Effect.flatMap((connection) => useConnection(connection))
        )
      )
    )
  )
)
```

Part of the `Pool` module, imported from `@effect/io/Pool`.

**Signature**

```ts
export declare const makeWithTTL: <R, E, A>(
  get: Effect.Effect<R, E, A>,
  min: number,
  max: number,
  timeToLive: Duration.Duration
) => Effect.Effect<Scope.Scope | R, never, Pool<E, A>>
```
