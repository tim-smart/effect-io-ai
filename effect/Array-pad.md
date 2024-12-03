# pad

Pads an array.
Returns a new array of length `n` with the elements of `array` followed by `fill` elements if `array` is shorter than `n`.
If `array` is longer than `n`, the returned array will be a slice of `array` containing the `n` first elements of `array`.
If `n` is less than or equal to 0, the returned array will be an empty array.

To import and use `pad` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.pad
```

**Example**

```ts
import { Array } from "effect"

const arr = [1, 2, 3]
const result = Array.pad(arr, 6, 0)
assert.deepStrictEqual(result, [1, 2, 3, 0, 0, 0])
```

**Signature**

```ts
export declare const pad: {
  <A, T>(n: number, fill: T): (self: Array<A>) => Array<A | T>
  <A, T>(self: Array<A>, n: number, fill: T): Array<A | T>
}
```
