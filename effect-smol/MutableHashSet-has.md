Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.has

Checks if the MutableHashSet contains the specified value.

**Example**

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.make("apple", "banana", "cherry")

console.log(MutableHashSet.has(set, "apple")) // true
console.log(MutableHashSet.has(set, "grape")) // false

// Pipe-able version
const hasApple = MutableHashSet.has("apple")
console.log(hasApple(set)) // true

// Check after adding
MutableHashSet.add(set, "grape")
console.log(MutableHashSet.has(set, "grape")) // true
```

**Signature**

```ts
declare const has: { <V>(key: V): (self: MutableHashSet<V>) => boolean; <V>(self: MutableHashSet<V>, key: V): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L252)

Since v2.0.0