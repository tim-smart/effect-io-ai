Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.hasHash

Checks if the specified key has an entry in the `HashMap` using a custom
hash.

**Example**

```ts
import { Hash } from "effect"
import * as HashMap from "effect/HashMap"

// Create a map with case-sensitive keys
const userMap = HashMap.make(
  ["Admin", { role: "administrator" }],
  ["User", { role: "standard" }]
)

// Check with exact hash
const exactHash = Hash.string("Admin")
console.log(HashMap.hasHash(userMap, "Admin", exactHash)) // true

// Check case-insensitive by using custom hash
const caseInsensitiveHash = Hash.string("admin".toLowerCase())
console.log(HashMap.hasHash(userMap, "admin", caseInsensitiveHash)) // false (different hash)
```

**Signature**

```ts
declare const hasHash: { <K1 extends K, K>(key: K1, hash: number): <V>(self: HashMap<K, V>) => boolean; <K1 extends K, K, V>(self: HashMap<K, V>, key: K1, hash: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L443)

Since v2.0.0