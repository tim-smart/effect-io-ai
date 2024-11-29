# min

Finds the minimum element in an array based on a comparator.

To import and use `min` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.min
undefined

**Example**

```ts
import { Array, Order } from "effect"

const min = Array.min([3, 1, 2], Order.number)
assert.deepStrictEqual(min, 1)
```

**Signature**

```ts
export declare const min: {
  <A>(O: Order.Order<A>): (self: NonEmptyReadonlyArray<A>) => A
  <A>(self: NonEmptyReadonlyArray<A>, O: Order.Order<A>): A
}
```
