Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.compact

Removes all None values from a TxHashMap containing Option values.

**Return behavior**: This function returns a new TxHashMap reference with only
the Some values unwrapped. The original TxHashMap is not modified.

**Example**

```ts
import { Effect, Option, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a map with optional user data
  const userData = yield* TxHashMap.make<
    string,
    Option.Option<{ age: number; email?: string }>
  >(
    ["alice", Option.some({ age: 30, email: "alice@example.com" })],
    ["bob", Option.none()], // incomplete data
    ["charlie", Option.some({ age: 25 })],
    ["diana", Option.none()], // missing data
    ["eve", Option.some({ age: 28, email: "eve@example.com" })]
  )

  // Remove all None values and unwrap Some values
  const validUsers = yield* TxHashMap.compact(userData)

  const size = yield* TxHashMap.size(validUsers)
  console.log(size) // 3 (alice, charlie, eve)

  const alice = yield* TxHashMap.get(validUsers, "alice")
  console.log(alice) // Option.some({ age: 30, email: "alice@example.com" })

  const bob = yield* TxHashMap.get(validUsers, "bob")
  console.log(bob) // Option.none() (removed from map)

  // Useful for cleaning up optional data processing results
  const userAges = yield* TxHashMap.map(validUsers, (user) => user.age)
  const ageEntries = yield* TxHashMap.entries(userAges)
  console.log(ageEntries) // [["alice", 30], ["charlie", 25], ["eve", 28]]
})
```

**Signature**

```ts
declare const compact: <K, A>(self: TxHashMap<K, Option.Option<A>>) => Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1992)

Since v2.0.0