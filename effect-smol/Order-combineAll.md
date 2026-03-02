Package: `effect`<br />
Module: `Order`<br />

## Order.combineAll

Combines all `Order` instances in the provided collection into a single `Order`.
The resulting `Order` compares using each `Order` in sequence until a non-zero result is found.

When to use this:
- When you have a variable number of orders to combine
- When combining orders from a collection or array
- When implementing dynamic multi-criteria sorting

Behavior:
- Pure function: does not mutate inputs
- Applies orders in iteration order
- Returns the first non-zero result from any order
- Returns `0` only if all orders return `0`
- Short-circuits on the first non-zero result

**Example** (Combining Multiple Orders)

```ts
import { Order } from "effect"

const byAge = Order.mapInput(
  Order.Number,
  (person: { name: string; age: number }) => person.age
)
const byName = Order.mapInput(
  Order.String,
  (person: { name: string; age: number }) => person.name
)

const combinedOrder = Order.combineAll([byAge, byName])

const person1 = { name: "Alice", age: 30 }
const person2 = { name: "Bob", age: 30 }

console.log(combinedOrder(person1, person2)) // -1 (Same age, Alice < Bob)
```

See also:
- `combine` - Combine two orders
- `makeReducer` - Create a reducer for combining orders

**Signature**

```ts
declare const combineAll: <A>(collection: Iterable<Order<A>>) => Order<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L470)

Since v2.0.0