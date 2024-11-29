# union

Creates a union of two arrays, removing duplicates.

To import and use `union` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.union
undefined

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2]
const array2 = [2, 3]
const result = Array.union(array1, array2)
assert.deepStrictEqual(result, [1, 2, 3])
```

**Signature**

```ts
export declare const union: {
  <T extends Iterable<any>>(
    that: T
  ): <S extends Iterable<any>>(
    self: S
  ) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>
  <A, B>(self: NonEmptyReadonlyArray<A>, that: ReadonlyArray<B>): NonEmptyArray<A | B>
  <A, B>(self: ReadonlyArray<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<A | B>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A | B>
}
```
