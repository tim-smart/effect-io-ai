# dropWhile

Remove the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

To import and use `dropWhile` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.dropWhile
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.dropWhile(numbers, (x) => x < 4)
assert.deepStrictEqual(result, [4, 5])
```

**Signature**

```ts
export declare const dropWhile: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): A[]
}
```
