Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.HashMap.Key

This type-level utility extracts the key type `K` from a `HashMap<K, V>` type.

**Example**

```ts
import * as HashMap from "effect/HashMap"

// Create a HashMap to extract key type from
const userMap = HashMap.make(
  ["alice", { name: "Alice", age: 30 }],
  ["bob", { name: "Bob", age: 25 }]
)

// Extract the key type (string)
type UserKey = HashMap.HashMap.Key<typeof userMap>

// Use the extracted type in functions
const getUserById = (id: UserKey) => HashMap.get(userMap, id)
console.log(getUserById("alice")) // Option.some({ name: "Alice", age: 30 })
```

**Signature**

```ts
type Key<T> = [T] extends [HashMap<infer _K, infer _V>] ? _K : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L129)

Since v2.0.0