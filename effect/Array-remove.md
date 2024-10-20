# remove

Delete the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

To import and use `remove` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.remove
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.remove(numbers, 2)
assert.deepStrictEqual(result, [1, 2, 4])

const outOfBoundsResult = Array.remove(numbers, 5)
assert.deepStrictEqual(outOfBoundsResult, [1, 2, 3, 4])
```

**Signature**

```ts
export declare const remove: {
  (i: number): <A>(self: Iterable<A>) => Array<A>
  <A>(self: Iterable<A>, i: number): Array<A>
}
```
