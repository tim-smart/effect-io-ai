Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.map

Transforms all values in the TxHashMap using the provided function, preserving keys.

**Return behavior**: This function returns a new TxHashMap reference with the
transformed values. The original TxHashMap is not modified.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a user profile map
  const profiles = yield* TxHashMap.make(
    ["alice", { name: "Alice", age: 30, active: true }],
    ["bob", { name: "Bob", age: 25, active: false }],
    ["charlie", { name: "Charlie", age: 35, active: true }]
  )

  // Transform to extract just names with greeting
  const greetings = yield* TxHashMap.map(
    profiles,
    (profile, userId) => `Hello, ${profile.name}! (User: ${userId})`
  )

  // Check the transformed values
  const aliceGreeting = yield* TxHashMap.get(greetings, "alice")
  console.log(aliceGreeting) // Option.some("Hello, Alice! (User: alice)")

  // Data-last usage with pipe
  const ages = yield* profiles.pipe(
    TxHashMap.map((profile) => profile.age)
  )

  const aliceAge = yield* TxHashMap.get(ages, "alice")
  console.log(aliceAge) // Option.some(30)

  // Original map is unchanged
  const originalAlice = yield* TxHashMap.get(profiles, "alice")
  console.log(originalAlice) // Option.some({ name: "Alice", age: 30, active: true })
})
```

**Signature**

```ts
declare const map: { <A, V, K>(f: (value: V, key: K) => A): (self: TxHashMap<K, V>) => Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>; <K, V, A>(self: TxHashMap<K, V>, f: (value: V, key: K) => A): Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1327)

Since v2.0.0