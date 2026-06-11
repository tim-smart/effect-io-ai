Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.MutableHashMap

A mutable hash map that stores key-value pairs and supports both referential
and Effect structural equality.

**When to use**

Use as a mutable key-value map when in-place updates are acceptable and keys
may rely on Effect structural equality.

**Details**

Operations mutate the map in place. Keys that implement `Equal` / `Hash` can
be looked up structurally; other keys use normal JavaScript reference or
primitive equality.

**Example** (Using a mutable hash map)

```ts
import { MutableHashMap } from "effect"

// Create a mutable hash map with string keys and number values
const map: MutableHashMap.MutableHashMap<string, number> = MutableHashMap
  .empty()

// Add some data
MutableHashMap.set(map, "count", 42)
MutableHashMap.set(map, "total", 100)

// Use as iterable
for (const [key, value] of map) {
  console.log(`${key}: ${value}`)
}
// Output:
// count: 42
// total: 100

// Convert to array
const entries = Array.from(map)
console.log(entries) // [["count", 42], ["total", 100]]
```

**See**

- `empty` for creating an empty mutable hash map
- `get` for reading values by key
- `set` for mutating entries by key

**Signature**

```ts
export interface MutableHashMap<out K, out V> extends Iterable<[K, V]>, Pipeable, Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly backing: Map<K, V>
  readonly buckets: Map<number, NonEmptyArray<K>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L73)

Since v2.0.0