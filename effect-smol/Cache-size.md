Package: `effect`<br />
Module: `Cache`<br />

## Cache.size

Retrieves the approximate number of entries in the cache.

Note that expired entries are counted until they are accessed and removed.
The size reflects the current number of entries stored, not the number
of valid entries.

**Example**

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Empty cache has size 0
  const emptySize = yield* Cache.size(cache)
  console.log(emptySize) // 0

  // Add entries and check size
  yield* Cache.get(cache, "hello")
  yield* Cache.get(cache, "world")
  const sizeAfterAdding = yield* Cache.size(cache)
  console.log(sizeAfterAdding) // 2

  // Size decreases after invalidation
  yield* Cache.invalidate(cache, "hello")
  const sizeAfterInvalidation = yield* Cache.size(cache)
  console.log(sizeAfterInvalidation) // 1
})
```

**Signature**

```ts
declare const size: <Key, A, E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L1099)

Since v4.0.0