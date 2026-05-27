Package: `effect`<br />
Module: `Pool`<br />

## Pool.makeWithTTL

Creates a scoped pool with minimum and maximum sizes and a time-to-live
policy for shrinking unused excess items.

**When to use**

Use to create an elastic scoped pool that can grow up to a maximum size and
later reclaim unused excess items.

**Details**

The returned pool requires `Scope`; when that scope is closed, allocated
items are released in an unspecified order. `concurrency` controls how many
fibers may use each pool item at once and defaults to `1`.

`targetUtilization` controls when new items are created and is clamped by the
pool implementation. A value of `1` waits until existing items are fully
utilized before creating more items.

`timeToLiveStrategy` controls when excess items expire: `"creation"` measures
from item creation, while `"usage"` measures from pool usage. The default is
`"usage"`.

**Example** (Create a connection pool)

```ts
import { Duration, Effect, Pool } from "effect"

interface Connection {
  readonly execute: (sql: string) => Effect.Effect<ReadonlyArray<string>>
  readonly close: Effect.Effect<void>
}

const acquireDBConnection = Effect.acquireRelease(
  Effect.succeed({
    execute: (sql) => Effect.succeed([`executed: ${sql}`]),
    close: Effect.void
  } satisfies Connection),
  (connection) => connection.close
)

const program = Effect.scoped(
  Effect.flatMap(
    Pool.makeWithTTL({
      acquire: acquireDBConnection,
      min: 10,
      max: 20,
      timeToLive: Duration.seconds(60)
    }),
    (pool) => Effect.flatMap(Pool.get(pool), (connection) => connection.execute("select 1"))
  )
)
```

**Signature**

```ts
declare const makeWithTTL: <A, E, R>(options: { readonly acquire: Effect.Effect<A, E, R>; readonly min: number; readonly max: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; readonly timeToLive: Duration.Input; readonly timeToLiveStrategy?: "creation" | "usage" | undefined; }) => Effect.Effect<Pool<A, E>, never, R | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L322)

Since v2.0.0