Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.remove

Removes the specified value from the MutableHashSet, mutating the set in place.
If the value doesn't exist, the set remains unchanged.

**Example**

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.make("apple", "banana", "cherry")

console.log(MutableHashSet.size(set)) // 3

// Remove existing value
MutableHashSet.remove(set, "banana")
console.log(MutableHashSet.size(set)) // 2
console.log(MutableHashSet.has(set, "banana")) // false

// Remove non-existent value (no effect)
MutableHashSet.remove(set, "grape")
console.log(MutableHashSet.size(set)) // 2

// Pipe-able version
const removeFruit = MutableHashSet.remove("apple")
removeFruit(set)
console.log(MutableHashSet.size(set)) // 1
```

**Signature**

```ts
declare const remove: { <V>(key: V): (self: MutableHashSet<V>) => MutableHashSet<V>; <V>(self: MutableHashSet<V>, key: V): MutableHashSet<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L281)

Since v2.0.0