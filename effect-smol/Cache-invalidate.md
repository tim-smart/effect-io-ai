Package: `effect`<br />
Module: `Cache`<br />

## Cache.invalidate

Invalidates the entry associated with the specified key in the cache.

**Example**

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Add a value to the cache
  yield* Cache.get(cache, "hello")
  console.log(yield* Cache.has(cache, "hello")) // true

  // Invalidate the entry
  yield* Cache.invalidate(cache, "hello")
  console.log(yield* Cache.has(cache, "hello")) // false

  // Invalidating non-existent keys doesn't error
  yield* Cache.invalidate(cache, "nonexistent")

  // Get after invalidation will invoke lookup again
  let lookupCount = 0
  const cache2 = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) =>
      Effect.sync(() => {
        lookupCount++
        return key.length
      })
  })

  yield* Cache.get(cache2, "test") // lookupCount = 1
  yield* Cache.invalidate(cache2, "test")
  yield* Cache.get(cache2, "test") // lookupCount = 2 (lookup called again)
})
```

**Signature**

```ts
declare const invalidate: { <Key, A>(key: Key): <E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L831)

Since v4.0.0