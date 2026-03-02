Package: `effect`<br />
Module: `Order`<br />

## Order.makeReducer

Creates a `Reducer` for combining `Order` instances, useful for aggregating orders in collections.

When to use this:
- When you need to combine multiple orders from a collection using reducer patterns
- When implementing fold operations over collections of orders
- When working with reducers that operate on orders

Behavior:
- Returns a reducer that combines orders using `combine`
- Uses `alwaysEqual` as the identity element (returns `0` for empty collections)
- Uses `combineAll` for combining collections of orders
- The reducer can be used with fold operations on collections

**Example** (Creating a Reducer)

```ts
import { Order } from "effect"

const reducer = Order.makeReducer<number>()
const orders = [Order.Number, Order.flip(Order.Number)]

const combined = reducer.combineAll(orders)
console.log(combined(1, 2)) // -1 (uses first order)
```

See also:
- `combine` - Combine two orders
- `combineAll` - Combine multiple orders
- `Reducer` - Reducer type for collection operations

**Signature**

```ts
declare const makeReducer: <A>() => Reducer.Reducer<Order<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L1084)

Since v4.0.0