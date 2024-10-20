# sortBy

Sorts the elements of an `Iterable` in increasing order based on the provided
orders. The elements are compared using the first order in `orders`, then the
second order if the first comparison is equal, and so on.

To import and use `sortBy` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.sortBy
```

**Example**

```ts
import { Array, Order } from "effect"

const users = [
  { name: "Alice", age: 30 },
  { name: "Bob", age: 25 },
  { name: "Charlie", age: 30 }
]

const result = Array.sortBy(
  Order.mapInput(Order.number, (user: (typeof users)[number]) => user.age),
  Order.mapInput(Order.string, (user: (typeof users)[number]) => user.name)
)(users)

assert.deepStrictEqual(result, [
  { name: "Bob", age: 25 },
  { name: "Alice", age: 30 },
  { name: "Charlie", age: 30 }
])

// Explanation:
// The array of users is sorted first by age in ascending order. When ages are equal,
// the users are further sorted by name in ascending order.
```

**Signature**

```ts
export declare const sortBy: <S extends Iterable<any> | NonEmptyReadonlyArray<any>>(
  ...orders: ReadonlyArray<Order.Order<ReadonlyArray.Infer<S>>>
) => (
  self: S
) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```
