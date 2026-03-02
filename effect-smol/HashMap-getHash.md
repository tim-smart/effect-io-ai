Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.getHash

Lookup the value for the specified key in the `HashMap` using a custom hash.

**Example**

```ts
import { Hash } from "effect"
import * as HashMap from "effect/HashMap"

// Useful when implementing custom equality for complex keys
const userMap = HashMap.make(
  ["user123", { name: "Alice", role: "admin" }],
  ["user456", { name: "Bob", role: "user" }]
)

// Use precomputed hash for performance in hot paths
const userId = "user123"
const precomputedHash = Hash.string(userId)

// Lookup with custom hash (e.g., cached hash value)
const user = HashMap.getHash(userMap, userId, precomputedHash)
console.log(user) // Option.some({ name: "Alice", role: "admin" })

// This avoids recomputing the hash when you already have it
const notFound = HashMap.getHash(userMap, "user999", Hash.string("user999"))
console.log(notFound) // Option.none()
```

**Signature**

```ts
declare const getHash: { <K1 extends K, K>(key: K1, hash: number): <V>(self: HashMap<K, V>) => Option<V>; <K1 extends K, K, V>(self: HashMap<K, V>, key: K1, hash: number): Option<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L346)

Since v2.0.0