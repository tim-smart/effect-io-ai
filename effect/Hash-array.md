Package: `effect`<br />
Module: `Hash`<br />

## Hash.array

Computes a hash value for an iterable by hashing all of its elements.

**When to use**

Use to hash the values yielded by an iterable with Effect hash semantics.

**Details**

The implementation folds element hashes from the seed `6151` with XOR and
then optimizes the final hash.

**Gotchas**

A hash is not an equality proof. Because this implementation uses XOR,
reordered inputs can produce the same hash.

**Example** (Hashing arrays)

```ts
import { Hash } from "effect"

const arr1 = [1, 2, 3]
const arr2 = [1, 2, 3]
const arr3 = [3, 2, 1]

console.log(Hash.array(arr1)) // hash of [1, 2, 3]
console.log(Hash.array(arr2)) // same hash as arr1
console.log(Hash.array(arr3)) // may match reordered inputs

console.log(Hash.array(arr1) === Hash.array(arr2)) // true
console.log(Hash.array(arr1) === Hash.array(arr3)) // true
```

**See**

- `hash` for the general-purpose hash dispatcher

**Signature**

```ts
declare const array: <A>(arr: Iterable<A>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Hash.ts#L519)

Since v2.0.0