# cartesianWith

Zips this chunk crosswise with the specified chunk using the specified combiner.

To import and use `cartesianWith` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.cartesianWith
undefined

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2]
const array2 = ["a", "b"]
const product = Array.cartesianWith(array1, array2, (a, b) => `${a}-${b}`)
assert.deepStrictEqual(product, ["1-a", "1-b", "2-a", "2-b"])
```

**Signature**

```ts
export declare const cartesianWith: {
  <A, B, C>(that: ReadonlyArray<B>, f: (a: A, b: B) => C): (self: ReadonlyArray<A>) => Array<C>
  <A, B, C>(self: ReadonlyArray<A>, that: ReadonlyArray<B>, f: (a: A, b: B) => C): Array<C>
}
```
