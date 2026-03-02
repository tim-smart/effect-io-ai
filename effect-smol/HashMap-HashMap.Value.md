Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.HashMap.Value

This type-level utility extracts the value type `V` from a `HashMap<K, V>` type.

**Example**

```ts
import * as HashMap from "effect/HashMap"

// Create a HashMap with user data
const userMap = HashMap.make(
  ["alice", { name: "Alice", age: 30, active: true }],
  ["bob", { name: "Bob", age: 25, active: false }]
)

// Extract the value type (User object)
type User = HashMap.HashMap.Value<typeof userMap>

// Use the extracted type for type-safe operations
const processUser = (user: User) => {
  return user.active ? `${user.name} (active)` : `${user.name} (inactive)`
}

const alice = HashMap.get(userMap, "alice")
// alice has type Option<User> thanks to type extraction
```

**Signature**

```ts
type Value<T> = [T] extends [HashMap<infer _K, infer _V>] ? _V : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L158)

Since v2.0.0