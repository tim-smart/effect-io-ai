Package: `effect`<br />
Module: `Cache`<br />

## Cache.values

Retrieves all successfully cached values from the cache, excluding failed
lookups and expired entries.

**Example**

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Add some values to the cache
  yield* Cache.get(cache, "a")
  yield* Cache.get(cache, "ab")
  yield* Cache.get(cache, "abc")

  // Retrieve all cached values
  const values = yield* Cache.values(cache)
  const valuesArray = Array.from(values).sort()

  console.log(valuesArray) // [1, 2, 3]
})
```

**Signature**

```ts
declare const values: <Key, A, E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<Iterable<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L1201)

Since v4.0.0