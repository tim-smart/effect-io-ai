# cartesian

Zips this chunk crosswise with the specified chunk.

To import and use `cartesian` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.cartesian
```

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2]
const array2 = ["a", "b"]
const product = Array.cartesian(array1, array2)
assert.deepStrictEqual(product, [
  [1, "a"],
  [1, "b"],
  [2, "a"],
  [2, "b"]
])
```

**Signature**

```ts
export declare const cartesian: {
  <B>(that: ReadonlyArray<B>): <A>(self: ReadonlyArray<A>) => Array<[A, B]>
  <A, B>(self: ReadonlyArray<A>, that: ReadonlyArray<B>): Array<[A, B]>
}
```
