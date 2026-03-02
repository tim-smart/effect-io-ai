Package: `effect`<br />
Module: `Cache`<br />

## Cache.invalidateAll

Invalidates all entries in the cache.

**Example**

```ts
import { Cache, Effect } from "effect"

// Clear all cached entries at once
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Populate cache with multiple entries
  yield* Cache.get(cache, "apple")
  yield* Cache.get(cache, "banana")
  yield* Cache.get(cache, "cherry")

  console.log(yield* Cache.size(cache)) // 3
  console.log(yield* Cache.has(cache, "apple")) // true

  // Clear all entries
  yield* Cache.invalidateAll(cache)

  // Verify cache is empty
  console.log(yield* Cache.size(cache)) // 0
  console.log(yield* Cache.has(cache, "apple")) // false
  console.log(yield* Cache.has(cache, "banana")) // false
  console.log(yield* Cache.has(cache, "cherry")) // false
})
```

**Signature**

```ts
declare const invalidateAll: <Key, A, E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L1085)

Since v4.0.0