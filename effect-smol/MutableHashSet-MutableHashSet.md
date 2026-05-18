Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.MutableHashSet

A mutable hash set for storing unique values with Effect structural equality
support.

Operations mutate the set in place. Values that implement `Equal` / `Hash`
can be de-duplicated structurally; other values use normal JavaScript
reference or primitive equality.

**Example** (Using a mutable hash set)

```ts
import { MutableHashSet } from "effect"

// Create a mutable hash set
const set: MutableHashSet.MutableHashSet<string> = MutableHashSet.make(
  "apple",
  "banana"
)

// Add elements
MutableHashSet.add(set, "cherry")

// Check if elements exist
console.log(MutableHashSet.has(set, "apple")) // true
console.log(MutableHashSet.has(set, "grape")) // false

// Iterate over elements
for (const value of set) {
  console.log(value) // "apple", "banana", "cherry"
}

// Get size
console.log(MutableHashSet.size(set)) // 3
```

**Signature**

```ts
export interface MutableHashSet<out V> extends Iterable<V>, Pipeable, Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly keyMap: MutableHashMap.MutableHashMap<V, boolean>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L123)

Since v2.0.0