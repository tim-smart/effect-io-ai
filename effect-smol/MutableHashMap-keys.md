Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.keys

Returns an iterable over the keys in the `MutableHashMap`.

**When to use**

Use to iterate over the keys currently stored in a mutable hash map.

**Example** (Reading keys)

```ts
import { MutableHashMap } from "effect"

const map = MutableHashMap.make(
  ["apple", 1],
  ["banana", 2],
  ["cherry", 3]
)

const allKeys = Array.from(MutableHashMap.keys(map))
console.log(allKeys) // ["apple", "banana", "cherry"]

// Useful for iteration or validation
const hasRequiredKeys = allKeys.includes("apple") && allKeys.includes("banana")
```

**See**

- `values` for iterating over stored values
- `has` for checking one key without iterating

**Signature**

```ts
declare const keys: <K, V>(self: MutableHashMap<K, V>) => Iterable<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L358)

Since v3.8.0