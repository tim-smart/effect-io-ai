Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.getHash

Lookup the value for the specified key in the TxHashMap using a custom hash.
This can provide performance benefits when the hash is precomputed.

**Example**

```ts
import { Effect, Hash, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a cache with user sessions
  const cache = yield* TxHashMap.make(
    ["session_abc123", { userId: "user1", lastActive: Date.now() }],
    ["session_def456", { userId: "user2", lastActive: Date.now() }]
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
declare const getHash: { <K1 extends K, K>(key: K1, hash: number): <V>(self: TxHashMap<K, V>) => Effect.Effect<Option.Option<V>, never, Effect.Transaction>; <K1 extends K, K, V>(self: TxHashMap<K, V>, key: K1, hash: number): Effect.Effect<Option.Option<V>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1201)

Since v2.0.0