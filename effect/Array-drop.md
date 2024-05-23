# drop

Drop a max number of elements from the start of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

To import and use `drop` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.drop
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.drop(numbers, 2)
assert.deepStrictEqual(result, [3, 4, 5])
```

**Signature**

```ts
export declare const drop: { (n: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, n: number): A[] }
```
