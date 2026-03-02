Package: `effect`<br />
Module: `Cache`<br />

## Cache.has

Checks if the cache contains an entry for the specified key.

**Example**

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 100,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Check non-existent key
  console.log(yield* Cache.has(cache, "missing")) // false

  // Add entry and check existence
  yield* Cache.get(cache, "hello")
  console.log(yield* Cache.has(cache, "hello")) // true
})
```

**Example**

```ts
import { Cache, Effect } from "effect"
import { TestClock } from "effect/testing"

// TTL expiration behavior
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 100,
    lookup: (key: string) => Effect.succeed(key.length),
    timeToLive: "1 hour"
  })

  // Add entry with TTL
  yield* Cache.get(cache, "expires")
  console.log(yield* Cache.has(cache, "expires")) // true

  // Still valid before expiration
  yield* TestClock.adjust("30 minutes")
  console.log(yield* Cache.has(cache, "expires")) // true

  // Expired after TTL
  yield* TestClock.adjust("31 minutes")
  console.log(yield* Cache.has(cache, "expires")) // false
})
```

**Example**

```ts
import { Cache, Effect } from "effect"

// Checking multiple keys efficiently
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 100,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // Populate some entries
  yield* Cache.set(cache, "apple", 5)
  yield* Cache.set(cache, "banana", 6)

  // Check multiple keys
  const keys = ["apple", "banana", "cherry", "date"]
  for (const key of keys) {
    const exists = yield* Cache.has(cache, key)
    console.log(`${key}: ${exists}`)
  }
  // Output:
  // apple: true
  // banana: true
  // cherry: false
  // date: false
})
```

**Signature**

```ts
declare const has: { <Key, A>(key: Key): <E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<boolean>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L775)

Since v4.0.0