# filterMap

Applies a function to each element of the `Iterable` and filters based on the result, keeping the transformed values where the function returns `Some`.
This method combines filtering and mapping functionalities, allowing transformations and filtering of elements based on a single function pass.

To import and use `filterMap` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.filterMap
undefined

**Example**

```ts
import { Array, Option } from "effect"

const data = [1, 2, 3, 4, 5]
const evenSquares = (x: number) => (x % 2 === 0 ? Option.some(x * x) : Option.none())
const result = Array.filterMap(data, evenSquares)

assert.deepStrictEqual(result, [4, 16])
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => Array<B>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Array<B>
}
```
