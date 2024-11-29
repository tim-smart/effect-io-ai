# insertAt

Insert an element at the specified index, creating a new `NonEmptyArray`,
or return `None` if the index is out of bounds.

To import and use `insertAt` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.insertAt
undefined

**Example**

```ts
import { Array, Option } from "effect"

const letters = ["a", "b", "c", "e"]
const result = Array.insertAt(letters, 3, "d")
assert.deepStrictEqual(result, Option.some(["a", "b", "c", "d", "e"]))
```

**Signature**

```ts
export declare const insertAt: {
  <B>(i: number, b: B): <A>(self: Iterable<A>) => Option<NonEmptyArray<A | B>>
  <A, B>(self: Iterable<A>, i: number, b: B): Option<NonEmptyArray<A | B>>
}
```
