Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.get

Safely lookup the value for the specified key in the TxHashMap.

**Example**

```ts
import { Effect, Option, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const userMap = yield* TxHashMap.make(
    ["alice", { name: "Alice", role: "admin" }],
    ["bob", { name: "Bob", role: "user" }]
  )

  // Safe lookup - returns Option
  const alice = yield* TxHashMap.get(userMap, "alice")
  console.log(alice) // Option.some({ name: "Alice", role: "admin" })

  const nonExistent = yield* TxHashMap.get(userMap, "charlie")
  console.log(nonExistent) // Option.none()

  // Use with pipe syntax for type-safe access
  const bobRole = yield* TxHashMap.get(userMap, "bob")
  if (bobRole._tag === "Some") {
    console.log(bobRole.value.role) // "user"
  }
})
```

**Signature**

```ts
declare const get: { <K1 extends K, K>(key: K1): <V>(self: TxHashMap<K, V>) => Effect.Effect<Option.Option<V>, never, Effect.Transaction>; <K1 extends K, K, V>(self: TxHashMap<K, V>, key: K1): Effect.Effect<Option.Option<V>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L360)

Since v2.0.0