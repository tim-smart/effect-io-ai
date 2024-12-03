# separate

Separates an `Iterable` into two arrays based on a predicate.

To import and use `separate` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.separate
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.partition(numbers, (n) => n % 2 === 0)
assert.deepStrictEqual(result, [
  [1, 3],
  [2, 4]
])
```

**Signature**

```ts
export declare const separate: <T extends Iterable<array_<any, any>>>(
  self: T
) => [Array<array_.Left<ReadonlyArray.Infer<T>>>, Array<array_.Right<ReadonlyArray.Infer<T>>>]
```
