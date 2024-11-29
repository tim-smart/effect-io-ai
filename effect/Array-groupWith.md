# groupWith

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s using the provided `isEquivalent` function.

To import and use `groupWith` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.groupWith
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.groupWith(["a", "a", "b", "b", "b", "c", "a"], (x, y) => x === y)
assert.deepStrictEqual(result, [["a", "a"], ["b", "b", "b"], ["c"], ["a"]])
```

**Signature**

```ts
export declare const groupWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<NonEmptyArray<A>>
  <A>(self: NonEmptyReadonlyArray<A>, isEquivalent: (self: A, that: A) => boolean): NonEmptyArray<NonEmptyArray<A>>
}
```
