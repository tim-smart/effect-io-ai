# flatten

Combines multiple arrays into a single array by concatenating all elements
from each nested array. This function ensures that the structure of nested
arrays is collapsed into a single, flat array.

To import and use `flatten` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.flatten
undefined

**Example**

```ts
import { Array } from "effect"

const nestedArrays = [[1, 2], [], [3, 4], [], [5, 6]]
const result = Array.flatten(nestedArrays)

assert.deepStrictEqual(result, [1, 2, 3, 4, 5, 6])
```

**Signature**

```ts
export declare const flatten: <S extends ReadonlyArray<ReadonlyArray<any>>>(self: S) => ReadonlyArray.Flatten<S>
```
