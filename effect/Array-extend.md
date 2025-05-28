Package: `effect`<br />
Module: `Array`<br />

## Array.extend

Extends an array with a function that maps each subarray to a value.

**Example**

```ts
import { Array } from "effect"

const result = Array.extend([1, 2, 3], as => as.length)
console.log(result) // [3, 2, 1]

// Explanation:
// The function maps each subarray starting from each element to its length.
// The subarrays are: [1, 2, 3], [2, 3], [3].
// The lengths are: 3, 2, 1.
// Therefore, the result is [3, 2, 1].
```

**Signature**

```ts
declare const extend: { <A, B>(f: (as: ReadonlyArray<A>) => B): (self: ReadonlyArray<A>) => Array<B>; <A, B>(self: ReadonlyArray<A>, f: (as: ReadonlyArray<A>) => B): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2989)

Since v2.0.0