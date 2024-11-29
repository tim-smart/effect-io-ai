# unprepend

Return a tuple containing the first element, and a new `Array` of the remaining elements, if any.

To import and use `unprepend` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.unprepend
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.unprepend([1, 2, 3, 4])
assert.deepStrictEqual(result, [1, [2, 3, 4]])
```

**Signature**

```ts
export declare const unprepend: <A>(self: NonEmptyReadonlyArray<A>) => [firstElement: A, remainingElements: Array<A>]
```
