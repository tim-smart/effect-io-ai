# max

Finds the maximum element in an array based on a comparator.

To import and use `max` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.max
```

**Example**

```ts
import { Array, Order } from "effect"

const max = Array.max([3, 1, 2], Order.number)
assert.deepStrictEqual(max, 3)
```

**Signature**

```ts
export declare const max: {
  <A>(O: Order.Order<A>): (self: NonEmptyReadonlyArray<A>) => A
  <A>(self: NonEmptyReadonlyArray<A>, O: Order.Order<A>): A
}
```
