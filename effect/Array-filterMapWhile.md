# filterMapWhile

Applies a function to each element of the array and filters based on the result, stopping when a condition is not met.
This method combines filtering and mapping in a single pass, and short-circuits, i.e., stops processing, as soon as the function returns `None`.
This is useful when you need to transform an array but only up to the point where a certain condition holds true.

To import and use `filterMapWhile` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.filterMapWhile
```

**Example**

```ts
import { Array, Option } from "effect"

const data = [2, 4, 5]
const toSquareTillOdd = (x: number) => (x % 2 === 0 ? Option.some(x * x) : Option.none())
const result = Array.filterMapWhile(data, toSquareTillOdd)

assert.deepStrictEqual(result, [4, 16])
```

**Signature**

```ts
export declare const filterMapWhile: {
  <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => B[]
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): B[]
}
```
