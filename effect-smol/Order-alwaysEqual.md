Package: `effect`<br />
Module: `Order`<br />

## Order.alwaysEqual

Creates an `Order` that considers all values as equal.

**When to use**

Use when when you need an order that doesn't distinguish between values
- As a default or fallback order when no meaningful comparison exists
- When implementing optional ordering where equality is sufficient

**Details**

- Always returns `0` regardless of input values
- Useful as a neutral element in order composition

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L443)

Since v4.0.0