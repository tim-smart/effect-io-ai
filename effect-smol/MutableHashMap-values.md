Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.values

Extracts all values from the MutableHashMap into an array.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

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

**Signature**

```ts
declare const values: <K, V>(self: MutableHashMap<K, V>) => Iterable<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L283)

Since v3.8.0