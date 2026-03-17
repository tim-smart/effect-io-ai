Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.remove

Removes the specified key from the TxHashMap.

**Mutation behavior**: This function mutates the original TxHashMap by removing
the specified key-value pair. It does not return a new TxHashMap reference.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const cache = yield* TxHashMap.make(
    ["user:1", { name: "Alice", lastSeen: "2024-01-01" }],
    ["user:2", { name: "Bob", lastSeen: "2024-01-02" }],
    ["user:3", { name: "Charlie", lastSeen: "2023-12-30" }]
  )

  // Remove expired user
  const removed = yield* TxHashMap.remove(cache, "user:3")
  console.log(removed) // true (key existed and was removed)

  // Try to remove non-existent key
  const notRemoved = yield* TxHashMap.remove(cache, "user:999")
  console.log(notRemoved) // false (key didn't exist)

  // Verify removal
  const hasUser3 = yield* TxHashMap.has(cache, "user:3")
  console.log(hasUser3) // false

  const size = yield* TxHashMap.size(cache)
  console.log(size) // 2
})
```

**Signature**

```ts
declare const remove: { <K1 extends K, K>(key: K1): <V>(self: TxHashMap<K, V>) => Effect.Effect<boolean, never, Effect.Transaction>; <K1 extends K, K, V>(self: TxHashMap<K, V>, key: K1): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L495)

Since v2.0.0