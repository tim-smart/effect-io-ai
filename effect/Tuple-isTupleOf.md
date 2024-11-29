# isTupleOf

Determine if an `Array` is a tuple with exactly `N` elements, narrowing down the type to `TupleOf`.

An `Array` is considered to be a `TupleOf` if its length is exactly `N`.

To import and use `isTupleOf` from the "Tuple" module:

ts
import \* as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.isTupleOf
undefined

**Example**

```ts
import { isTupleOf } from "effect/Tuple"

assert.deepStrictEqual(isTupleOf([1, 2, 3], 3), true)
assert.deepStrictEqual(isTupleOf([1, 2, 3], 2), false)
assert.deepStrictEqual(isTupleOf([1, 2, 3], 4), false)

const arr: number[] = [1, 2, 3]
if (isTupleOf(arr, 3)) {
  console.log(arr)
  // ^? [number, number, number]
}
```
