Package: `effect`<br />
Module: `Cache`<br />

## Cache.make

Creates a cache with a fixed time-to-live for all entries.

This is the basic cache constructor where all entries share the same TTL.
The lookup function will be called when a key is not found or has expired.

**Example**

```ts
import { Cache, Effect } from "effect"

// Basic cache with string keys
const program = Effect.gen(function*() {
  const cache = yield* Cache.make<string, number>({
    capacity: 100,
    lookup: (key) => Effect.succeed(key.length)
  })

  const result1 = yield* Cache.get(cache, "hello")
  const result2 = yield* Cache.get(cache, "world")
  console.log({ result1, result2 }) // { result1: 5, result2: 5 }
})
```

**Example**

```ts
import { Cache, Effect } from "effect"

// Cache with TTL and async lookup
const fetchUserCache = Effect.gen(function*() {
  const cache = yield* Cache.make<
    number,
    { name: string; email: string },
    string
  >({
    capacity: 500,
    lookup: (userId) =>
      Effect.tryPromise({
        try: () => fetch(`/api/users/${userId}`).then((r) => r.json()),
        catch: () => "Failed to fetch user"
      }),
    timeToLive: "15 minutes"
  })

  // First call fetches from API, second call returns cached result
  const user1 = yield* Cache.get(cache, 123)
  const user2 = yield* Cache.get(cache, 123) // From cache
  return { user1, user2 }
})
```

**Signature**

```ts
declare const make: <Key, A, E = never, R = never, ServiceMode extends "lookup" | "construction" = never>(options: { readonly lookup: (key: Key) => Effect.Effect<A, E, R>; readonly capacity: number; readonly timeToLive?: Duration.Input | undefined; readonly requireServicesAt?: ServiceMode | undefined; }) => Effect.Effect<Cache<Key, A, E, "lookup" extends ServiceMode ? R : never>, never, "lookup" extends ServiceMode ? never : R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L257)

Since v4.0.0