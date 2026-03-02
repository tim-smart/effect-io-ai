Package: `effect`<br />
Module: `Cache`<br />

## Cache.Cache

A cache interface that provides a mutable key-value store with automatic TTL management,
capacity limits, and lookup functions for cache misses.

**Example**

```ts
import { Cache, Effect } from "effect"

// Basic cache with string keys and number values
const program = Effect.gen(function*() {
  const cache = yield* Cache.make<string, number>({
    capacity: 100,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Cache operations
  const value1 = yield* Cache.get(cache, "hello") // 5
  const value2 = yield* Cache.get(cache, "world") // 5
  const value3 = yield* Cache.get(cache, "hello") // 5 (cached)

  return [value1, value2, value3]
})
```

**Example**

```ts
import { Cache, Effect } from "effect"

// Cache with error handling
const program = Effect.gen(function*() {
  const cache = yield* Cache.make<string, number, string>({
    capacity: 10,
    lookup: (key: string) =>
      key === "error"
        ? Effect.fail("Lookup failed")
        : Effect.succeed(key.length)
  })

  // Handle successful and failed lookups
  const success = yield* Cache.get(cache, "test") // 4
  const failure = yield* Effect.exit(Cache.get(cache, "error")) // Exit.fail

  return { success, failure }
})
```

**Example**

```ts
import { Cache, Data, Duration, Effect } from "effect"

// Cache with complex key types and TTL
class UserId extends Data.Class<{ id: number }> {}

const program = Effect.gen(function*() {
  const userCache = yield* Cache.make<UserId, string>({
    capacity: 1000,
    lookup: (userId: UserId) => Effect.succeed(`User-${userId.id}`),
    timeToLive: Duration.minutes(5)
  })

  const userId = new UserId({ id: 123 })
  const userName = yield* Cache.get(userCache, userId)

  return userName // "User-123"
})
```

**Signature**

```ts
export interface Cache<in out Key, in out A, in out E = never, out R = never> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly map: MutableHashMap.MutableHashMap<Key, Entry<A, E>>
  readonly capacity: number
  readonly lookup: (key: Key) => Effect.Effect<A, E, R>
  readonly timeToLive: (exit: Exit.Exit<A, E>, key: Key) => Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L93)

Since v4.0.0