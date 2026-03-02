Package: `effect`<br />
Module: `Order`<br />

## Order.flip

Creates a new `Order` that reverses the comparison order of the input `Order`.

When to use this:
- When you need descending order instead of ascending
- When reversing an existing order without modifying the original
- When creating orders that compare in the opposite direction

Behavior:
- Pure function: does not mutate inputs
- Returns a new order that swaps the arguments before comparison
- If the original order returns `-1`, the flipped order returns `1`, and vice versa
- Equal comparisons remain `0`

**Example** (Reversing Order)

```ts
import { Order } from "effect"

const flip = Order.flip(Order.Number)

console.log(flip(1, 2)) // 1
console.log(flip(2, 1)) // -1
console.log(flip(1, 1)) // 0
```

See also:
- `combine` - Combine orders for multi-criteria comparison

**Signature**

```ts
declare const flip: <A>(O: Order<A>) => Order<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L329)

Since v2.0.0