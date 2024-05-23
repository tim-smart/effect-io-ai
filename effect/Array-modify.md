# modify

Apply a function to the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

To import and use `modify` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.modify
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.modify(numbers, 2, (n) => n * 2)
assert.deepStrictEqual(result, [1, 2, 6, 4])
```

**Signature**

```ts
export declare const modify: {
  <A, B>(i: number, f: (a: A) => B): (self: Iterable<A>) => (A | B)[]
  <A, B>(self: Iterable<A>, i: number, f: (a: A) => B): (A | B)[]
}
```
