# zipWith

Apply a function to pairs of elements at the same index in two `Iterable`s, collecting the results in a new `Array`. If one
input `Iterable` is short, excess elements of the longer `Iterable` are discarded.

To import and use `zipWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.zipWith
```

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2, 3]
const array2 = [4, 5, 6]
const result = Array.zipWith(array1, array2, (a, b) => a + b)
assert.deepStrictEqual(result, [5, 7, 9])
```

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: NonEmptyReadonlyArray<B>, f: (a: A, b: B) => C): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<C>
  <B, A, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => Array<C>
  <A, B, C>(self: NonEmptyReadonlyArray<A>, that: NonEmptyReadonlyArray<B>, f: (a: A, b: B) => C): NonEmptyArray<C>
  <B, A, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): Array<C>
}
```
