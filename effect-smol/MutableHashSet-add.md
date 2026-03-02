Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.add

Adds a value to the MutableHashSet, mutating the set in place.
If the value already exists, the set remains unchanged.

**Example**

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.empty<string>()

// Add new values
MutableHashSet.add(set, "apple")
MutableHashSet.add(set, "banana")

console.log(MutableHashSet.size(set)) // 2
console.log(MutableHashSet.has(set, "apple")) // true

// Add duplicate (no effect)
MutableHashSet.add(set, "apple")
console.log(MutableHashSet.size(set)) // 2

// Pipe-able version
const addFruit = MutableHashSet.add("cherry")
addFruit(set)
console.log(MutableHashSet.size(set)) // 3
```

**Signature**

```ts
declare const add: { <V>(key: V): (self: MutableHashSet<V>) => MutableHashSet<V>; <V>(self: MutableHashSet<V>, key: V): MutableHashSet<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L211)

Since v2.0.0