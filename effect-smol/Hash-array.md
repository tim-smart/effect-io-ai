Package: `effect`<br />
Module: `Hash`<br />

## Hash.array

Computes a hash value for an array by hashing all of its elements.

This function creates a hash value based on all elements in the array.
The order of elements matters, so arrays with the same elements in different
orders will produce different hash values.

**Example**

```ts
import { Hash } from "effect"

const arr1 = [1, 2, 3]
const arr2 = [1, 2, 3]
const arr3 = [3, 2, 1]

console.log(Hash.array(arr1)) // hash of [1, 2, 3]
console.log(Hash.array(arr2)) // same hash as arr1
console.log(Hash.array(arr3)) // different hash (different order)

// Arrays with same elements in same order produce same hash
console.log(Hash.array(arr1) === Hash.array(arr2)) // true
console.log(Hash.array(arr1) === Hash.array(arr3)) // false
```

**Signature**

```ts
declare const array: <A>(arr: Iterable<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L424)

Since v2.0.0