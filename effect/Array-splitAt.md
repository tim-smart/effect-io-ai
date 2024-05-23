# splitAt

Splits an `Iterable` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` can be `0`.

To import and use `splitAt` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.splitAt
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.splitAt(numbers, 3)
assert.deepStrictEqual(result, [
  [1, 2, 3],
  [4, 5]
])
```

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: Iterable<A>) => [beforeIndex: A[], fromIndex: A[]]
  <A>(self: Iterable<A>, n: number): [beforeIndex: A[], fromIndex: A[]]
}
```
