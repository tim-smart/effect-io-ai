# initNonEmpty

Get all but the last element of a non empty array, creating a new array.

To import and use `initNonEmpty` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.initNonEmpty
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.initNonEmpty([1, 2, 3, 4])
assert.deepStrictEqual(result, [1, 2, 3])
```

**Signature**

```ts
export declare const initNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => Array<A>
```
