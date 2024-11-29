# reduceRight

Reduces an array from the right.

To import and use `reduceRight` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.reduceRight
undefined

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
const result = Array.reduceRight(numbers, 0, (acc, n) => acc + n)
assert.deepStrictEqual(result, 6)
```

**Signature**

```ts
export declare const reduceRight: {
  <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Iterable<A>) => B
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A, i: number) => B): B
}
```
