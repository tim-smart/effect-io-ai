Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.clear

Removes all values from the MutableHashSet, mutating the set in place.
The set becomes empty after this operation.

**Example**

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.make("apple", "banana", "cherry")

console.log(MutableHashSet.size(set)) // 3

// Clear all values
MutableHashSet.clear(set)

console.log(MutableHashSet.size(set)) // 0
console.log(MutableHashSet.has(set, "apple")) // false
console.log(Array.from(set)) // []

// Can still add new values after clearing
MutableHashSet.add(set, "new")
console.log(MutableHashSet.size(set)) // 1
```

**Signature**

```ts
declare const clear: <V>(self: MutableHashSet<V>) => MutableHashSet<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L352)

Since v2.0.0