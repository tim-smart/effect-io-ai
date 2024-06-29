# dedupeAdjacentWith

Deduplicates adjacent elements that are identical using the provided `isEquivalent` function.

To import and use `dedupeAdjacentWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.dedupeAdjacentWith
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 1, 2, 2, 3, 3]
const unique = Array.dedupeAdjacentWith(numbers, (a, b) => a === b)
assert.deepStrictEqual(unique, [1, 2, 3])
```

**Signature**

```ts
export declare const dedupeAdjacentWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): A[]
}
```
