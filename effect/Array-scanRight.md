# scanRight

Accumulates values from an `Iterable` starting from the right, storing
each intermediate result in an array. Useful for tracking the progression of
a value through a series of transformations.

To import and use `scanRight` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.scanRight
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.scanRight(numbers, 0, (acc, value) => acc + value)
assert.deepStrictEqual(result, [10, 9, 7, 4, 0])
```

**Signature**

```ts
export declare const scanRight: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => NonEmptyArray<B>
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): NonEmptyArray<B>
}
```
