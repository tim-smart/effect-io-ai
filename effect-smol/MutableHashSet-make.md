Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.make

Creates a MutableHashSet from a variable number of values.
Duplicates are automatically removed.

**Example**

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.make("apple", "banana", "apple", "cherry")

console.log(MutableHashSet.size(set)) // 3
console.log(Array.from(set)) // ["apple", "banana", "cherry"]

// With numbers
const numbers = MutableHashSet.make(1, 2, 3, 2, 1)
console.log(MutableHashSet.size(numbers)) // 3
console.log(Array.from(numbers)) // [1, 2, 3]

// Mixed types
const mixed = MutableHashSet.make("hello", 42, true, "hello")
console.log(MutableHashSet.size(mixed)) // 3
```

**Signature**

```ts
declare const make: <Keys extends ReadonlyArray<unknown>>(...keys: Keys) => MutableHashSet<Keys[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L186)

Since v2.0.0