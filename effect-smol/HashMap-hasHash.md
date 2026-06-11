Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.hasHash

Checks whether the specified key has an entry in the `HashMap` using a custom
hash.

**Example** (Checking keys with a hash)

```ts
import { Hash, HashMap } from "effect"

// Create a map with case-sensitive keys
const userMap = HashMap.make(
  ["Admin", { role: "administrator" }],
  ["User", { role: "standard" }]
)

// Check with exact hash
const exactHash = Hash.string("Admin")
console.log(HashMap.hasHash(userMap, "Admin", exactHash)) // true

// A matching hash does not override key equality
console.log(HashMap.hasHash(userMap, "admin", exactHash)) // false

// A different hash also cannot find the existing key
const lowercaseHash = Hash.string("admin")
console.log(HashMap.hasHash(userMap, "Admin", lowercaseHash)) // false
```

**Signature**

```ts
declare const hasHash: { <K1 extends K, K>(key: K1, hash: number): <V>(self: HashMap<K, V>) => boolean; <K1 extends K, K, V>(self: HashMap<K, V>, key: K1, hash: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L475)

Since v2.0.0