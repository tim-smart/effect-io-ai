Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.values

Returns an iterable over the values in the `MutableHashMap`.

**When to use**

Use to iterate over the values currently stored in a mutable hash map.

**Example** (Reading values)

```ts
import { MutableHashMap } from "effect"

const map = MutableHashMap.make(
  ["apple", 1],
  ["banana", 2],
  ["cherry", 3]
)

const allValues = Array.from(MutableHashMap.values(map))
console.log(allValues) // [1, 2, 3]

// Useful for calculations
const total = allValues.reduce((sum, value) => sum + value, 0)
console.log(total) // 6

// Filter values
const largeValues = allValues.filter((value) => value > 1)
console.log(largeValues) // [2, 3]
```

**See**

- `keys` for iterating over stored keys

**Signature**

```ts
declare const values: <K, V>(self: MutableHashMap<K, V>) => Iterable<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L366)

Since v3.8.0