# modifyNonEmptyLast

Apply a function to the last element, creating a new `NonEmptyReadonlyArray`.

To import and use `modifyNonEmptyLast` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.modifyNonEmptyLast
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.modifyNonEmptyLast([1, 2, 3], (n) => n * 2)
assert.deepStrictEqual(result, [1, 2, 6])
```

**Signature**

```ts
export declare const modifyNonEmptyLast: {
  <A, B>(f: (a: A) => B): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>
  <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B): NonEmptyArray<A | B>
}
```
