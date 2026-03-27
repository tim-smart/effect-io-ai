Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.make

Creates a TxHashMap from the provided key-value pairs.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a user directory
  const userMap = yield* TxHashMap.make(
    ["alice", { name: "Alice Smith", role: "admin" }],
    ["bob", { name: "Bob Johnson", role: "user" }],
    ["charlie", { name: "Charlie Brown", role: "user" }]
  )

  // Check the initial size
  const size = yield* TxHashMap.size(userMap)
  console.log(size) // 3

  // Access users
  const alice = yield* TxHashMap.get(userMap, "alice")
  console.log(alice) // Option.some({ name: "Alice Smith", role: "admin" })

  const nonExistent = yield* TxHashMap.get(userMap, "david")
  console.log(nonExistent) // Option.none()
})
```

**Signature**

```ts
declare const make: <K, V>(...entries: Array<readonly [K, V]>) => Effect.Effect<TxHashMap<K, V>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L278)

Since v2.0.0