Package: `effect`<br />
Module: `Order`<br />

## Order.alwaysEqual

Creates an `Order` that considers all values as equal.

**When to use**

Use when you need an order that treats all values as equal.

**Details**

Always returns `0` regardless of input values, making it useful as a neutral
element in order composition.

**Example** (Always Equal Order)

```ts
import { Order } from "effect"

const alwaysEqualOrder = Order.alwaysEqual<number>()

console.log(alwaysEqualOrder(1, 2)) // 0
console.log(alwaysEqualOrder(2, 1)) // 0
console.log(alwaysEqualOrder(1, 1)) // 0
```

**See**

- `combine` to combine with other orders

**Signature**

```ts
declare const alwaysEqual: <A>() => Order<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L423)

Since v4.0.0