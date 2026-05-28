Package: `effect`<br />
Module: `Order`<br />

## Order.Tuple

Creates an `Order` for a tuple type based on orders for each element.

**When to use**

Use when when comparing tuples with different types for each position
- When you need type-safe tuple ordering
- When working with fixed-length heterogeneous collections

**Details**

- Compares tuples element-by-element using the corresponding order
- Stops at the first non-zero comparison result
- Requires tuples to have the same length as the order collection
- Returns `0` if all elements are equal

**Example** (Tuple Ordering)

```ts
import { Order } from "effect"

const tupleOrder = Order.Tuple([Order.Number, Order.String])

console.log(tupleOrder([1, "a"], [2, "b"])) // -1
console.log(tupleOrder([1, "b"], [1, "a"])) // 1
console.log(tupleOrder([1, "a"], [1, "a"])) // 0
```

**See**

- `Array` to compare arrays with length consideration

**Signature**

```ts
declare const Tuple: <const Elements extends ReadonlyArray<Order<any>>>(elements: Elements) => Order<{ readonly [I in keyof Elements]: [Elements[I]] extends [Order<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L611)

Since v4.0.0