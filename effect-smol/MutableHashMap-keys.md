Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.keys

Extracts all keys from the MutableHashMap into an array.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

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

**Signature**

```ts
declare const keys: <K, V>(self: MutableHashMap<K, V>) => Iterable<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L253)

Since v3.8.0