Package: `effect`<br />
Module: `Cache`<br />

## Cache.makeWith

Creates a cache with dynamic time-to-live based on the result and key.

The timeToLive function receives both the exit result and the key, allowing
for flexible TTL policies based on success/failure state and key characteristics.

**Example**

```ts
import { Cache, Effect, Exit } from "effect"

// Cache with TTL based on computed value
const userCache = Effect.gen(function*() {
  const cache = yield* Cache.makeWith(
    (id: number) => Effect.succeed({ id, active: id % 2 === 0 }),
    {
      capacity: 1000,
      timeToLive(exit) {
        if (Exit.isSuccess(exit)) {
          const user = exit.value
          return user.active ? "1 hour" : "5 minutes"
        }
        return "30 seconds"
      }
    }
  )

  return cache
})
```

**Signature**

```ts
declare const makeWith: <Key, A, E = never, R = never, ServiceMode extends "lookup" | "construction" = never>(lookup: (key: Key) => Effect.Effect<A, E, R>, options: { readonly capacity: number; readonly timeToLive?: ((exit: Exit.Exit<A, E>, key: Key) => Duration.Input) | undefined; readonly requireServicesAt?: ServiceMode | undefined; }) => Effect.Effect<Cache<Key, A, E, "lookup" extends ServiceMode ? R : never>, never, "lookup" extends ServiceMode ? never : R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L146)

Since v4.0.0