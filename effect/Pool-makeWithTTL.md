Package: `effect`<br />
Module: `Pool`<br />

## Pool.makeWithTTL

Makes a new pool with the specified minimum and maximum sizes and time to
live before a pool whose excess items are not being used will be shrunk
down to the minimum size. The pool is returned in a `Scope`, which governs
the lifetime of the pool. When the pool is shutdown because the `Scope` is
used, the individual items allocated by the pool will be released in some
unspecified order.

By setting the `concurrency` parameter, you can control the level of concurrent
access per pool item. By default, the number of permits is set to `1`.

`targetUtilization` determines when to create new pool items. It is a value
between 0 and 1, where 1 means only create new pool items when all the existing
items are fully utilized.

A `targetUtilization` of 0.5 will create new pool items when the existing items are
50% utilized.

The `timeToLiveStrategy` determines how items are invalidated. If set to
"creation", then items are invalidated based on their creation time. If set
to "usage", then items are invalidated based on pool usage.

By default, the `timeToLiveStrategy` is set to "usage".

```ts
import { createConnection } from "mysql2";
import { Duration, Effect, Pool } from "effect"

const acquireDBConnection = Effect.acquireRelease(
  Effect.sync(() => createConnection('mysql://...')),
  (connection) => Effect.sync(() => connection.end(() => {})),
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

**Signature**

```ts
declare const makeWithTTL: <A, E, R>(options: { readonly acquire: Effect.Effect<A, E, R>; readonly min: number; readonly max: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; readonly timeToLive: Duration.DurationInput; readonly timeToLiveStrategy?: "creation" | "usage" | undefined; }) => Effect.Effect<Pool<A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pool.ts#L171)

Since v2.0.0