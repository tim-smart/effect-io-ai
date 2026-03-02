Package: `effect`<br />
Module: `Cache`<br />

## Cache.set

Sets the value associated with the specified key in the cache. This will
overwrite any existing value for that key, skipping the lookup function.

**Example**

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 100,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Set a value directly without invoking lookup
  yield* Cache.set(cache, "hello", 42)
  const result = yield* Cache.get(cache, "hello")
  console.log(result) // 42 (not 5 from lookup)
})
```

**Example**

```ts
import { Cache, Effect } from "effect"

// Overwriting existing cached values
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 100,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // First get populates via lookup
  const original = yield* Cache.get(cache, "test") // 4

  // Set overwrites the cached value
  yield* Cache.set(cache, "test", 999)
  const updated = yield* Cache.get(cache, "test") // 999

  console.log({ original, updated })
})
```

**Example**

```ts
import { Cache, Effect } from "effect"
import { TestClock } from "effect/testing"

// TTL behavior with set operations
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 100,
    lookup: (key: string) => Effect.succeed(key.length),
    timeToLive: "1 hour"
  })

  // Set value with TTL applied
  yield* Cache.set(cache, "temporary", 123)
  console.log(yield* Cache.has(cache, "temporary")) // true

  // Advance time past TTL
  yield* TestClock.adjust("2 hours")
  console.log(yield* Cache.has(cache, "temporary")) // false
})
```

**Example**

```ts
import { Cache, Effect } from "effect"

// Capacity enforcement with set operations
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 2,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Fill cache to capacity
  yield* Cache.set(cache, "a", 1)
  yield* Cache.set(cache, "b", 2)
  console.log(yield* Cache.size(cache)) // 2

  // Adding another entry evicts oldest
  yield* Cache.set(cache, "c", 3)
  console.log(yield* Cache.size(cache)) // 2
  console.log(yield* Cache.has(cache, "a")) // false (evicted)
  console.log(yield* Cache.has(cache, "c")) // true
})
```

**Signature**

```ts
declare const set: { <Key, A>(key: Key, value: A): <E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L668)

Since v4.0.0