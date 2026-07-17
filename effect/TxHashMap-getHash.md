Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.getHash

Looks up the value for the specified key using a caller-supplied hash.

**Gotchas**

The supplied hash must be the hash for the same key, such as a precomputed
`Hash.hash(key)` value. If the hash does not match the key, an existing entry
may not be found.

**Example** (Looking up values with precomputed hashes)

```ts
import { Effect, Hash, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a cache with user sessions
  const cache = yield* TxHashMap.make(
    ["session_abc123", { userId: "user1", lastActive: 1_700_000_000_000 }],
    ["session_def456", { userId: "user2", lastActive: 1_700_000_060_000 }]
  )

  // When you have precomputed hash (e.g., from another lookup)
  const sessionId = "session_abc123"
  const precomputedHash = Hash.string(sessionId)

  // Use hash-optimized lookup for performance in hot paths
  const session = yield* TxHashMap.getHash(cache, sessionId, precomputedHash)
  console.log(session) // Option.some({ userId: "user1", lastActive: ... })

  // This avoids recomputing the hash when you already have it
  const invalidSession = yield* TxHashMap.getHash(
    cache,
    "invalid",
    Hash.string("invalid")
  )
  console.log(invalidSession) // Option.none()
})
```

**Signature**

```ts
declare const getHash: { <K1 extends K, K>(key: K1, hash: number): <V>(self: TxHashMap<K, V>) => Effect.Effect<Option.Option<V>>; <K1 extends K, K, V>(self: TxHashMap<K, V>, key: K1, hash: number): Effect.Effect<Option.Option<V>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxHashMap.ts#L1256)

Since v4.0.0