Package: `effect`<br />
Module: `Array`<br />

## Array.sortBy

Sorts the elements of an `Iterable` in increasing order based on the provided
orders. The elements are compared using the first order in `orders`, then the
second order if the first comparison is equal, and so on.

**Example**

```ts
import { Array, Order, pipe } from "effect"

const users = [
  { name: "Alice", age: 30 },
  { name: "Bob", age: 25 },
  { name: "Charlie", age: 30 }
]

const result = pipe(
  users,
  Array.sortBy(
    Order.mapInput(Order.number, (user: (typeof users)[number]) => user.age),
    Order.mapInput(Order.string, (user: (typeof users)[number]) => user.name)
  )
)

console.log(result)
// [
//   { name: "Bob", age: 25 },
//   { name: "Alice", age: 30 },
//   { name: "Charlie", age: 30 }
// ]

// Explanation:
// The array of users is sorted first by age in ascending order. When ages are equal,
// the users are further sorted by name in ascending order.
```

**Signature**

```ts
declare const sortBy: <S extends Iterable<any>>(...orders: ReadonlyArray<Order.Order<ReadonlyArray.Infer<S>>>) => (self: S) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1412)

Since v2.0.0