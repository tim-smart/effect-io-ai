Package: `effect`<br />
Module: `Cache`<br />

## Cache.make

Creates a cache with a fixed time-to-live for all entries.

**Details**

This is the basic cache constructor where all entries share the same TTL.
The lookup function will be called when a key is not found or has expired.

**Example** (Creating a basic cache)

```ts
import { Cache, Effect } from "effect"

// Basic cache with string keys
const program = Effect.gen(function*() {
  const cache = yield* Cache.make<string, number>({
    capacity: 100,
    lookup: (key) => Effect.succeed(key.length)
  })

  const result1 = yield* Cache.get(cache, "hello")
  const result2 = yield* Cache.get(cache, "world")
  console.log({ result1, result2 }) // { result1: 5, result2: 5 }
})
```

**Example** (Creating a cache with TTL)

```ts
import { Cache, Effect } from "effect"

const program = Effect.gen(function*() {
  const users = new Map([
    [123, { name: "Ada", email: "ada@example.com" }],
    [456, { name: "Grace", email: "grace@example.com" }]
  ])

  const cache = yield* Cache.make<
    number,
    { name: string; email: string },
    string
  >({
    capacity: 500,
    lookup: (userId) =>
      Effect.suspend(() => {
        const user = users.get(userId)
        return user === undefined
          ? Effect.fail(`User ${userId} not found`)
          : Effect.succeed(user)
      }),
    timeToLive: "15 minutes"
  })

  const user1 = yield* Cache.get(cache, 123)
  console.log(user1) // { name: "Ada", email: "ada@example.com" }

  const user2 = yield* Cache.get(cache, 123)
  console.log(user2) // { name: "Ada", email: "ada@example.com" }
})
```

**Signature**

```ts
declare const make: <Key, A, E = never, R = never, ServiceMode extends "lookup" | "construction" = never>(options: { readonly lookup: (key: Key) => Effect.Effect<A, E, R>; readonly capacity: number; readonly timeToLive?: Duration.Input | undefined; readonly requireServicesAt?: ServiceMode | undefined; }) => Effect.Effect<Cache<Key, A, E, "lookup" extends ServiceMode ? R : never>, never, "lookup" extends ServiceMode ? never : R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cache.ts#L271)

Since v2.0.0