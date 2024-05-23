# replaceOption

Replaces an element in an array with the given value, returning an option of the updated array.

To import and use `replaceOption` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.replaceOption
```

**Example**

```ts
import { Array, Option } from "effect"

const numbers = [1, 2, 3]
const result = Array.replaceOption(numbers, 1, 4)
assert.deepStrictEqual(result, Option.some([1, 4, 3]))
```

**Signature**

```ts
export declare const replaceOption: {
  <B>(i: number, b: B): <A>(self: Iterable<A>) => Option<(B | A)[]>
  <A, B>(self: Iterable<A>, i: number, b: B): Option<(A | B)[]>
}
```
