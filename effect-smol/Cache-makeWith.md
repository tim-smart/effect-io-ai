Package: `effect`<br />
Module: `Cache`<br />

## Cache.makeWith

Creates a cache with dynamic time-to-live based on the result and key.

The timeToLive function receives both the exit result and the key, allowing
for flexible TTL policies based on success/failure state and key characteristics.

**Example**

```ts
import { Cache, Effect, Exit } from "effect"

// Cache with different TTL for success vs failure
const program = Effect.gen(function*() {
  const cache = yield* Cache.makeWith<string, number, string>({
    capacity: 100,
    lookup: (key) =>
      key === "fail"
        ? Effect.fail("error")
        : Effect.succeed(key.length),
    timeToLive: (exit, key) => {
      if (Exit.isFailure(exit)) return "1 minute" // Short TTL for errors
      return key.startsWith("temp") ? "5 minutes" : "1 hour"
    }
  })

  // Get values with different TTL policies
  const result1 = yield* Cache.get(cache, "hello")
  const result2 = yield* Cache.get(cache, "temp_data")
  console.log({ result1, result2 }) // { result1: 5, result2: 9 }
})
```

**Example**

```ts
import { Cache, Effect, Exit } from "effect"

// Cache with TTL based on computed value
const userCache = Effect.gen(function*() {
  const cache = yield* Cache.makeWith<
    number,
    { id: number; active: boolean },
    never
  >({
    capacity: 1000,
    lookup: (id) => Effect.succeed({ id, active: id % 2 === 0 }),
    timeToLive: (exit) => {
      if (Exit.isSuccess(exit)) {
        const user = exit.value
        return user.active ? "1 hour" : "5 minutes"
      }
      return "30 seconds"
    }
  })

  return cache
})
```

**Signature**

```ts
declare const makeWith: <Key, A, E = never, R = never, ServiceMode extends "lookup" | "construction" = never>(options: { readonly lookup: (key: Key) => Effect.Effect<A, E, R>; readonly capacity: number; readonly timeToLive?: ((exit: Exit.Exit<A, E>, key: Key) => Duration.Input) | undefined; readonly requireServicesAt?: ServiceMode | undefined; }) => Effect.Effect<Cache<Key, A, E, "lookup" extends ServiceMode ? R : never>, never, "lookup" extends ServiceMode ? never : R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L173)

Since v4.0.0