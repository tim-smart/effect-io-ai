# tailNonEmpty

Get all but the first element of a `NonEmptyReadonlyArray`.

To import and use `tailNonEmpty` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.tailNonEmpty
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.tailNonEmpty([1, 2, 3, 4])
assert.deepStrictEqual(result, [2, 3, 4])
```

**Signature**

```ts
export declare const tailNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => Array<A>
```
