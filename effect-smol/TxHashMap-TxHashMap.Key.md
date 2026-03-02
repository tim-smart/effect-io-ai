Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.TxHashMap.Key

Extracts the key type from a TxHashMap type.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a user map to extract key type from
  const userMap = yield* TxHashMap.make(
    ["alice", { name: "Alice", age: 30 }],
    ["bob", { name: "Bob", age: 25 }]
  )

  // Extract the key type (string)
  type UserKey = TxHashMap.TxHashMap.Key<typeof userMap>

  // Use the extracted type in functions
  const getUserById = (id: UserKey) => TxHashMap.get(userMap, id)
  const alice = yield* getUserById("alice") // Option<{ name: string, age: number }>
})
```

**Signature**

```ts
type Key<T> = T extends TxHashMap<infer K, any> ? K : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L142)

Since v2.0.0