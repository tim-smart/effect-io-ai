Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.make

Creates a HashSet from a variable number of values.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const fruits = HashSet.make("apple", "banana", "cherry")
console.log(HashSet.size(fruits)) // 3

const numbers = HashSet.make(1, 2, 3, 2, 1) // Duplicates ignored
console.log(HashSet.size(numbers)) // 3

const mixed = HashSet.make("hello", 42, true)
console.log(HashSet.size(mixed)) // 3
```

**Signature**

```ts
declare const make: <Values extends ReadonlyArray<any>>(...values: Values) => HashSet<Values[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L131)

Since v2.0.0