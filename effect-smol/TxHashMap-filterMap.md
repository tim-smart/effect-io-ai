Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.filterMap

Combines filtering and mapping in a single operation. Applies a filter to each
entry, keeping only successful results and transforming them.

**Return behavior**: This function returns a new TxHashMap reference containing
only the transformed entries that succeeded. The original TxHashMap is not modified.

**Example**

```ts
import { Effect, Option, Result, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a mixed data map
  const userData = yield* TxHashMap.make(
    ["alice", { age: "30", role: "admin", active: true }],
    ["bob", { age: "invalid", role: "user", active: true }],
    ["charlie", { age: "25", role: "admin", active: false }],
    ["diana", { age: "28", role: "user", active: true }]
  )

  // Extract valid ages for active admin users only
  const activeAdminAges = yield* TxHashMap.filterMap(
    userData,
    (user, username) => {
      if (!user.active || user.role !== "admin") return Result.failVoid
      const age = parseInt(user.age)
      if (isNaN(age)) return Result.failVoid
      return Result.succeed({
        username,
        age,
        seniority: age > 27 ? "senior" : "junior"
      })
    }
  )

  const aliceData = yield* TxHashMap.get(activeAdminAges, "alice")
  console.log(aliceData) // Option.some({ username: "alice", age: 30, seniority: "senior" })

  const charlieData = yield* TxHashMap.get(activeAdminAges, "charlie")
  console.log(charlieData) // Option.none() (not active)

  // Data-last usage with pipe
  const validAges = yield* userData.pipe(
    TxHashMap.filterMap((user) => {
      const age = parseInt(user.age)
      return isNaN(age) ? Result.failVoid : Result.succeed(age)
    })
  )

  const size = yield* TxHashMap.size(validAges)
  console.log(size) // 3 (alice, charlie, diana have valid ages)
})
```

**Signature**

```ts
declare const filterMap: { <V, K, A, X>(f: (input: V, key: K) => Result<A, X>): (self: TxHashMap<K, V>) => Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>; <K, V, A, X>(self: TxHashMap<K, V>, f: (input: V, key: K) => Result<A, X>): Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1554)

Since v2.0.0