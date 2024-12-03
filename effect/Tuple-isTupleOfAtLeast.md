# isTupleOfAtLeast

Determine if an `Array` is a tuple with at least `N` elements, narrowing down the type to `TupleOfAtLeast`.

An `Array` is considered to be a `TupleOfAtLeast` if its length is at least `N`.

To import and use `isTupleOfAtLeast` from the "Tuple" module:

```ts
import * as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.isTupleOfAtLeast
```

**Example**

```ts
import { isTupleOfAtLeast } from "effect/Tuple"

assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 3), true)
assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 2), true)
assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 4), false)

const arr: number[] = [1, 2, 3, 4]
if (isTupleOfAtLeast(arr, 3)) {
  console.log(arr)
  // ^? [number, number, number, ...number[]]
}
```
