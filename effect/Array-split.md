# split

Splits this iterable into `n` equally sized arrays.

To import and use `split` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.split
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5, 6, 7, 8]
const result = Array.split(numbers, 3)
assert.deepStrictEqual(result, [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8]
])
```

**Signature**

```ts
export declare const split: { (n: number): <A>(self: Iterable<A>) => A[][]; <A>(self: Iterable<A>, n: number): A[][] }
```
