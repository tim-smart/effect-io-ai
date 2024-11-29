# dropRight

Drop a max number of elements from the end of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

To import and use `dropRight` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.dropRight
undefined

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.dropRight(numbers, 2)
assert.deepStrictEqual(result, [1, 2, 3])
```

**Signature**

```ts
export declare const dropRight: {
  (n: number): <A>(self: Iterable<A>) => Array<A>
  <A>(self: Iterable<A>, n: number): Array<A>
}
```
