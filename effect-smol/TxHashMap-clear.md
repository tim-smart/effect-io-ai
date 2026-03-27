Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.clear

Removes all entries from the TxHashMap.

**Mutation behavior**: This function mutates the original TxHashMap by clearing
all key-value pairs. It does not return a new TxHashMap reference.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const sessionMap = yield* TxHashMap.make(
    ["session1", { userId: "alice", expires: "2024-01-01T12:00:00Z" }],
    ["session2", { userId: "bob", expires: "2024-01-01T13:00:00Z" }],
    ["session3", { userId: "charlie", expires: "2024-01-01T14:00:00Z" }]
  )

  // Check initial state
  const initialSize = yield* TxHashMap.size(sessionMap)
  console.log(initialSize) // 3

  // Clear all sessions (e.g., during maintenance)
  yield* TxHashMap.clear(sessionMap)

  // Verify cleared
  const finalSize = yield* TxHashMap.size(sessionMap)
  console.log(finalSize) // 0

  const isEmpty = yield* TxHashMap.isEmpty(sessionMap)
  console.log(isEmpty) // true
})
```

**Signature**

```ts
declare const clear: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L547)

Since v2.0.0