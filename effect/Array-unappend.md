# unappend

Return a tuple containing a copy of the `NonEmptyReadonlyArray` without its last element, and that last element.

To import and use `unappend` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.unappend
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.unappend([1, 2, 3, 4])
assert.deepStrictEqual(result, [[1, 2, 3], 4])
```

**Signature**

```ts
export declare const unappend: <A>(
  self: NonEmptyReadonlyArray<A>
) => [arrayWithoutLastElement: Array<A>, lastElement: A]
```
