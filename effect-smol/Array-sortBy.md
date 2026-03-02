Package: `effect`<br />
Module: `Array`<br />

## Array.sortBy

Sorts an array by multiple `Order`s applied in sequence: the first order is
used first; ties are broken by the second order, and so on.

- Data-last only (returns a function).
- Preserves `NonEmptyArray` in the return type.

**Example** (Multi-key sorting)

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
    Order.mapInput(Order.Number, (user: (typeof users)[number]) => user.age),
    Order.mapInput(Order.String, (user: (typeof users)[number]) => user.name)
  )
)
console.log(result)
// [{ name: "Bob", age: 25 }, { name: "Alice", age: 30 }, { name: "Charlie", age: 30 }]
```

**See**

- `sort` — sort by a single `Order`
- `sortWith` — sort by a derived key

**Signature**

```ts
declare const sortBy: <S extends Iterable<any>>(...orders: ReadonlyArray<Order.Order<ReadonlyArray.Infer<S>>>) => (self: S) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1910)

Since v2.0.0