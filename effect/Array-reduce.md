# reduce

Reduces an array from the left.

To import and use `reduce` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.reduce
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
const result = Array.reduce(numbers, 0, (acc, n) => acc + n)
assert.deepStrictEqual(result, 6)
```

**Signature**

```ts
export declare const reduce: {
  <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Iterable<A>) => B
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A, i: number) => B): B
}
```
