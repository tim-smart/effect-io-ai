# findLastIndex

Return the last index for which a predicate holds.

To import and use `findLastIndex` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.findLastIndex
```

**Example**

```ts
import { Array, Option } from "effect"

const numbers = [1, 3, 8, 9]
const result = Array.findLastIndex(numbers, (x) => x < 5)
assert.deepStrictEqual(result, Option.some(1))
```

**Signature**

```ts
export declare const findLastIndex: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<number>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<number>
}
```
