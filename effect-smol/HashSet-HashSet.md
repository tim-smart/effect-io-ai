Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.HashSet

A HashSet is an immutable set data structure that provides efficient storage
and retrieval of unique values. It uses a HashMap internally for optimal performance.

**Example**

```ts
import * as HashSet from "effect/HashSet"

// Create a HashSet
const set = HashSet.make("apple", "banana", "cherry")

// Check membership
console.log(HashSet.has(set, "apple")) // true
console.log(HashSet.has(set, "grape")) // false

// Add values (returns new HashSet)
const updated = HashSet.add(set, "grape")
console.log(HashSet.size(updated)) // 4

// Remove values (returns new HashSet)
const smaller = HashSet.remove(set, "banana")
console.log(HashSet.size(smaller)) // 2
```

**Signature**

```ts
export interface HashSet<out Value> extends Iterable<Value>, Equal, Pipeable, Inspectable {
  readonly [TypeId]: typeof TypeId
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L42)

Since v2.0.0