# intersection

Creates an `Array` of unique values that are included in all given `Iterable`s.
The order and references of result values are determined by the first `Iterable`.

To import and use `intersection` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.intersection
```

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2, 3]
const array2 = [3, 4, 1]
const result = Array.intersection(array1, array2)
assert.deepStrictEqual(result, [1, 3])
```

**Signature**

```ts
export declare const intersection: {
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Array<A & B>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A & B>
}
```
