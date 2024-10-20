# zip

Takes two `Iterable`s and returns an `Array` of corresponding pairs.
If one input `Iterable` is short, excess elements of the
longer `Iterable` are discarded.

To import and use `zip` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.zip
```

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2, 3]
const array2 = ["a", "b"]
const result = Array.zip(array1, array2)
assert.deepStrictEqual(result, [
  [1, "a"],
  [2, "b"]
])
```

**Signature**

```ts
export declare const zip: {
  <B>(that: NonEmptyReadonlyArray<B>): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<[A, B]>
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Array<[A, B]>
  <A, B>(self: NonEmptyReadonlyArray<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<[A, B]>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Array<[A, B]>
}
```
