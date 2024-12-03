# takeRight

Keep only a max number of elements from the end of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

To import and use `takeRight` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.takeRight
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.takeRight(numbers, 3)
assert.deepStrictEqual(result, [3, 4, 5])
```

**Signature**

```ts
export declare const takeRight: {
  (n: number): <A>(self: Iterable<A>) => Array<A>
  <A>(self: Iterable<A>, n: number): Array<A>
}
```
