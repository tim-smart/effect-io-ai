# extend

Extends an array with a function that maps each subarray to a value.

To import and use `extend` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.extend
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
const result = Array.extend(numbers, (as) => as.length)
assert.deepStrictEqual(result, [3, 2, 1])

// Explanation:
// The function maps each subarray starting from each element to its length.
// The subarrays are: [1, 2, 3], [2, 3], [3].
// The lengths are: 3, 2, 1.
// Therefore, the result is [3, 2, 1].
```

**Signature**

```ts
export declare const extend: {
  <A, B>(f: (as: ReadonlyArray<A>) => B): (self: ReadonlyArray<A>) => Array<B>
  <A, B>(self: ReadonlyArray<A>, f: (as: ReadonlyArray<A>) => B): Array<B>
}
```
