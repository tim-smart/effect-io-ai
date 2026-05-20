Package: `effect`<br />
Module: `Cache`<br />

## Cache.get

Retrieves the value for a key, invoking the lookup function on a cache miss
or expired entry.

**Details**

Concurrent `get` calls for the same missing key share the same pending
lookup. The cache stores the lookup `Exit`, so failed lookups are cached and
will fail again until the entry expires, is invalidated, or is refreshed.

**Example** (Getting cached values)

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Cache miss - triggers lookup function
  const result1 = yield* Cache.get(cache, "hello")
  console.log(result1) // 5

  // Cache hit - returns cached value without lookup
  const result2 = yield* Cache.get(cache, "hello")
  console.log(result2) // 5 (from cache)

  return { result1, result2 }
})
```

**Example** (Handling lookup failures)

```ts
import { Cache, Effect } from "effect"

// Error handling when lookup fails
const program = Effect.gen(function*() {
  const cache = yield* Cache.make<string, number, string>({
    capacity: 10,
    lookup: (key: string) =>
      key === "error"
        ? Effect.fail("Lookup failed")
        : Effect.succeed(key.length)
  })

  // Successful lookup
  const success = yield* Cache.get(cache, "hello")
  console.log(success) // 5

  // Failed lookup - returns error
  const failure = yield* Effect.exit(Cache.get(cache, "error"))
  console.log(failure) // Exit.fail("Lookup failed")
})
```

**Example** (Sharing concurrent lookups)

```ts
import { Cache, Effect } from "effect"

// Concurrent access - multiple gets of same key only invoke lookup once
const program = Effect.gen(function*() {
  let lookupCount = 0
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) =>
      Effect.sync(() => {
        lookupCount++
        return key.length
      })
  })

  // Multiple concurrent gets
  const results = yield* Effect.all([
    Cache.get(cache, "hello"),
    Cache.get(cache, "hello"),
    Cache.get(cache, "hello")
  ], { concurrency: "unbounded" })

  console.log(results) // [5, 5, 5]
  console.log(lookupCount) // 1 (lookup called only once)
})
```

**Signature**

```ts
declare const get: { <Key, A>(key: Key): <E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<A, E, R>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L414)

Since v4.0.0