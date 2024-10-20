# partitionMap

Applies a function to each element of the `Iterable`, categorizing the results into two separate arrays.
This function is particularly useful for operations where each element can result in two possible types,
and you want to separate these types into different collections. For instance, separating validation results
into successes and failures.

To import and use `partitionMap` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.partitionMap
```

**Example**

```ts
import { Array, Either } from "effect"

const data = [1, 2, 3, 4, 5]
const isEven = (x: number) => x % 2 === 0
const partitioned = Array.partitionMap(data, (x) => (isEven(x) ? Either.right(x) : Either.left(x)))

assert.deepStrictEqual(partitioned, [
  [1, 3, 5],
  [2, 4]
])
```

**Signature**

```ts
export declare const partitionMap: {
  <A, B, C>(f: (a: A, i: number) => array_<C, B>): (self: Iterable<A>) => [left: Array<B>, right: Array<C>]
  <A, B, C>(self: Iterable<A>, f: (a: A, i: number) => array_<C, B>): [left: Array<B>, right: Array<C>]
}
```
