Package: `effect`<br />
Module: `Cache`<br />

## Cache.refresh

Forces a refresh of the value associated with the specified key in the cache.

It will always invoke the lookup function to construct a new value,
overwriting any existing value for that key.

**Example**

```ts
import { Cache, Effect } from "effect"

// Force refresh of existing cached values
const program = Effect.gen(function*() {
  let counter = 0
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.sync(() => `${key}-${++counter}`)
  })

  // Initial cache population
  const value1 = yield* Cache.get(cache, "user")
  console.log(value1) // "user-1"

  // Get from cache (no lookup)
  const value2 = yield* Cache.get(cache, "user")
  console.log(value2) // "user-1" (same value)

  // Force refresh - always calls lookup
  const refreshed = yield* Cache.refresh(cache, "user")
  console.log(refreshed) // "user-2" (new value)

  // Subsequent gets return refreshed value
  const value3 = yield* Cache.get(cache, "user")
  console.log(value3) // "user-2"
})
```

**Example**

```ts
import { Cache, Effect } from "effect"
import { TestClock } from "effect/testing"

// Refresh resets TTL (Time To Live)
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length),
    timeToLive: "1 hour"
  })

  yield* Cache.get(cache, "test")
  yield* TestClock.adjust("45 minutes")

  // Entry would normally expire in 15 minutes
  console.log(yield* Cache.has(cache, "test")) // true

  // Refresh resets the TTL to full 1 hour
  yield* Cache.refresh(cache, "test")
  yield* TestClock.adjust("30 minutes")

  // Still valid because TTL was reset
  console.log(yield* Cache.has(cache, "test")) // true
})
```

**Example**

```ts
import { Cache, Effect } from "effect"

// Refresh non-existent keys
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(`value-for-${key}`)
  })

  // Refresh non-existent key creates new entry
  const result = yield* Cache.refresh(cache, "newKey")
  console.log(result) // "value-for-newKey"

  // Verify it's now cached
  console.log(yield* Cache.has(cache, "newKey")) // true
})
```

**Signature**

```ts
declare const refresh: { <Key, A>(key: Key): <E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<A, E, R>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L1014)

Since v4.0.0