Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.keys

Returns an iterable over the keys in the `MutableHashMap`.

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

**Signature**

```ts
declare const keys: <K, V>(self: MutableHashMap<K, V>) => Iterable<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L277)

Since v3.8.0