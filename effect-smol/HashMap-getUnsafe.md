Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.getUnsafe

Looks up the value for the specified key in the `HashMap` unsafely using the
internal hashing function.

**Gotchas**

This function throws an error if the key is not found. Use `HashMap.get` for
safe access that returns `Option`.

**Example** (Unsafely looking up values)

```ts
import { HashMap, Option } from "effect"

const config = HashMap.make(
  ["api_url", "https://api.example.com"],
  ["timeout", "5000"],
  ["retries", "3"]
)

// Safe: use when you're certain the key exists
const apiUrl = HashMap.getUnsafe(config, "api_url") // "https://api.example.com"
console.log(`Connecting to: ${apiUrl}`)

// Preferred: use get() for uncertain keys
const dbUrl = HashMap.get(config, "db_url") // Option.none()
if (Option.isSome(dbUrl)) {
  console.log(`Database: ${dbUrl.value}`)
}

// This would throw: HashMap.getUnsafe(config, "db_url")
// Error: "HashMap.getUnsafe: key not found"
```

**Signature**

```ts
declare const getUnsafe: { <K1 extends K, K>(key: K1): <V>(self: HashMap<K, V>) => V; <K1 extends K, K, V>(self: HashMap<K, V>, key: K1): V; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L472)

Since v4.0.0