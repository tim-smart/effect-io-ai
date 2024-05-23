# replace

Change the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

To import and use `replace` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.replace
```

**Example**

```ts
import { Array } from "effect"

const letters = ["a", "b", "c", "d"]
const result = Array.replace(1, "z")(letters)
assert.deepStrictEqual(result, ["a", "z", "c", "d"])
```

**Signature**

```ts
export declare const replace: {
  <B>(i: number, b: B): <A>(self: Iterable<A>) => (B | A)[]
  <A, B>(self: Iterable<A>, i: number, b: B): (A | B)[]
}
```
