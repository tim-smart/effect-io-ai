# modifyNonEmptyHead

Apply a function to the head, creating a new `NonEmptyReadonlyArray`.

To import and use `modifyNonEmptyHead` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.modifyNonEmptyHead
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.modifyNonEmptyHead([1, 2, 3], (n) => n * 10)
assert.deepStrictEqual(result, [10, 2, 3])
```

**Signature**

```ts
export declare const modifyNonEmptyHead: {
  <A, B>(f: (a: A) => B): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>
  <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B): NonEmptyArray<A | B>
}
```
