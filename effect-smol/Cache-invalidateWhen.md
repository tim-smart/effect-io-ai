Package: `effect`<br />
Module: `Cache`<br />

## Cache.invalidateWhen

Conditionally invalidates the entry associated with the specified key in the cache
if the predicate returns true for the cached value.

**Example**

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Add values to the cache
  yield* Cache.get(cache, "hello") // value = 5
  yield* Cache.get(cache, "hi") // value = 2

  // Invalidate when value equals 5
  const invalidated1 = yield* Cache.invalidateWhen(
    cache,
    "hello",
    (value) => value === 5
  )
  console.log(invalidated1) // true
  console.log(yield* Cache.has(cache, "hello")) // false

  // Don't invalidate when predicate doesn't match
  const invalidated2 = yield* Cache.invalidateWhen(
    cache,
    "hi",
    (value) => value === 5
  )
  console.log(invalidated2) // false
  console.log(yield* Cache.has(cache, "hi")) // true (still present)

  // Returns false for non-existent keys
  const invalidated3 = yield* Cache.invalidateWhen(
    cache,
    "nonexistent",
    () => true
  )
  console.log(invalidated3) // false

  // Returns false for failed cached values
  const cacheWithErrors = yield* Cache.make<string, number, string>({
    capacity: 10,
    lookup: (key: string) =>
      key === "fail" ? Effect.fail("error") : Effect.succeed(key.length)
  })

  yield* Effect.exit(Cache.get(cacheWithErrors, "fail"))
  const invalidated4 = yield* Cache.invalidateWhen(
    cacheWithErrors,
    "fail",
    () => true
  )
  console.log(invalidated4) // false (can't invalidate failed values)
})
```

**Signature**

```ts
declare const invalidateWhen: { <Key, A>(key: Key, f: Predicate<A>): <E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<boolean>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key, f: Predicate<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L875)

Since v4.0.0