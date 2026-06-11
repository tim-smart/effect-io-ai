Package: `effect`<br />
Module: `Order`<br />

## Order.makeReducer

Creates a `Reducer` for combining `Order` instances, useful for aggregating orders in collections.

**When to use**

Use when you need a reducer that combines orders.

**Details**

Returns a reducer that combines orders using `combine`, uses `alwaysEqual` as
the identity element for empty collections, and uses `combineAll` for
combining collections of orders. The reducer can be used with fold operations
on collections.

**Example** (Creating a Reducer)

```ts
import { Order } from "effect"

const reducer = Order.makeReducer<number>()
const orders = [Order.Number, Order.flip(Order.Number)]

const combined = reducer.combineAll(orders)
console.log(combined(1, 2)) // -1 (uses first order)
```

**See**

- `combine` to combine two orders
- `combineAll` to combine multiple orders
- `Reducer` for reducing orders as a collection operation

**Signature**

```ts
declare const makeReducer: <A>() => Reducer.Reducer<Order<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L976)

Since v4.0.0