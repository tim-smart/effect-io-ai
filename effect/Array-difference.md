# difference

Creates a `Array` of values not included in the other given `Iterable`.
The order and references of result values are determined by the first `Iterable`.

To import and use `difference` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.difference
```

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2, 3]
const array2 = [2, 3, 4]
const difference = Array.difference(array1, array2)
assert.deepStrictEqual(difference, [1])
```

**Signature**

```ts
export declare const difference: {
  <A>(that: Iterable<A>): (self: Iterable<A>) => Array<A>
  <A>(self: Iterable<A>, that: Iterable<A>): Array<A>
}
```
