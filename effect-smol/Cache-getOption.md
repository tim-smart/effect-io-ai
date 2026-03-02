Package: `effect`<br />
Module: `Cache`<br />

## Cache.getOption

Retrieves the value associated with the specified key from the cache,
returning an `Option` that is `Some` if the key exists and has not expired,
or `None` if the key does not exist or has expired.

Unlike `get`, this function will not invoke the lookup function if the key
is missing or expired.

**Example**

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length)
  })

  // No value in cache yet - returns None without lookup
  const empty = yield* Cache.getOption(cache, "hello")
  console.log(empty) // Option.none()

  // Populate cache using get
  yield* Cache.get(cache, "hello")

  // Now getOption returns the cached value
  const cached = yield* Cache.getOption(cache, "hello")
  console.log(cached) // Option.some(5)

  return { empty, cached }
})
```

**Example**

```ts
import { Cache, Effect } from "effect"
import { TestClock } from "effect/testing"

// Expired entries return None
const program = Effect.gen(function*() {
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (key: string) => Effect.succeed(key.length),
    timeToLive: "1 hour"
  })

  // Add value to cache
  yield* Cache.get(cache, "hello")

  // Value exists before expiration
  const beforeExpiry = yield* Cache.getOption(cache, "hello")
  console.log(beforeExpiry) // Option.some(5)

  // Simulate time passing
  yield* TestClock.adjust("2 hours")

  // Value expired - returns None
  const afterExpiry = yield* Cache.getOption(cache, "hello")
  console.log(afterExpiry) // Option.none()
})
```

**Example**

```ts
import { Cache, Deferred, Effect, Fiber } from "effect"

// Waits for ongoing computation to complete
const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<void>()
  const cache = yield* Cache.make({
    capacity: 10,
    lookup: (_key: string) => Deferred.await(deferred).pipe(Effect.as(42))
  })

  // Start lookup in background
  const getFiber = yield* Effect.forkChild(Cache.get(cache, "key"))

  // getOption waits for ongoing computation
  const optionFiber = yield* Effect.forkChild(Cache.getOption(cache, "key"))

  // Complete the computation
  yield* Deferred.succeed(deferred, void 0)

  const result = yield* Fiber.join(optionFiber)
  console.log(result) // Option.some(42)
})
```

**Signature**

```ts
declare const getOption: { <Key, A>(key: Key): <E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<Option.Option<A>, E>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key): Effect.Effect<Option.Option<A>, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L522)

Since v4.0.0