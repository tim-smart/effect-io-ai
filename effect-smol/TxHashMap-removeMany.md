Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.removeMany

Removes multiple keys from the TxHashMap.

**Mutation behavior**: This function mutates the original TxHashMap by removing
all specified keys. It does not return a new TxHashMap reference.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a cache with temporary data
  const cache = yield* TxHashMap.make(
    ["session_1", { user: "alice", expires: "2024-01-01" }],
    ["session_2", { user: "bob", expires: "2024-01-01" }],
    ["session_3", { user: "charlie", expires: "2024-12-31" }],
    ["temp_data_1", { value: "temporary" }],
    ["temp_data_2", { value: "also_temporary" }]
  )

  console.log(yield* TxHashMap.size(cache)) // 5

  // Remove expired sessions and temporary data
  const keysToRemove = ["session_1", "session_2", "temp_data_1", "temp_data_2"]
  yield* TxHashMap.removeMany(cache, keysToRemove)

  console.log(yield* TxHashMap.size(cache)) // 1

  // Verify only the valid session remains
  const remainingSession = yield* TxHashMap.get(cache, "session_3")
  console.log(remainingSession) // Option.some({ user: "charlie", expires: "2024-12-31" })

  // Can also remove from Set, Array, or any iterable
  const moreKeysToRemove = new Set(["session_3"])
  yield* TxHashMap.removeMany(cache, moreKeysToRemove)
  console.log(yield* TxHashMap.isEmpty(cache)) // true
})
```

**Signature**

```ts
declare const removeMany: { <K1 extends K, K>(keys: Iterable<K1>): <V>(self: TxHashMap<K, V>) => Effect.Effect<void>; <K1 extends K, K, V>(self: TxHashMap<K, V>, keys: Iterable<K1>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1049)

Since v2.0.0