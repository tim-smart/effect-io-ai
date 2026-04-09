Package: `effect`<br />
Module: `Cache`<br />

## Cache.keys

Retrieves all active keys from the cache, automatically filtering out expired entries.

**Example**

```ts
import { Cache, Effect } from "effect"

// Basic key enumeration
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Add some entries to the cache
  yield* Cache.get(cache, "hello")
  yield* Cache.get(cache, "world")
  yield* Cache.get(cache, "cache")

  // Retrieve all active keys
  const keys = yield* Cache.keys(cache)

  console.log(Array.from(keys)) // ["hello", "world", "cache"]
})
```

**Signature**

```ts
declare const keys: <Key, A, E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<Iterable<Key>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L1131)

Since v4.0.0