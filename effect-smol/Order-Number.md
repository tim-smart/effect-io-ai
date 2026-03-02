Package: `effect`<br />
Module: `Order`<br />

## Order.Number

An `Order` instance for numbers that compares them numerically.

When to use this:
- When comparing numbers for sorting or searching
- As a base for creating orders on types containing numbers
- When implementing numeric comparisons in data structures

Behavior:
- Pure function: does not mutate inputs
- `0` is considered equal to `-0`
- All `NaN` values are considered equal to each other
- Any `NaN` is considered less than any non-NaN number
- Uses standard numeric comparison for all other values

**Example** (Number Ordering)

```ts
import { Order } from "effect"

console.log(Order.Number(1, 1)) // 0
console.log(Order.Number(1, 2)) // -1
console.log(Order.Number(2, 1)) // 1

console.log(Order.Number(0, -0)) // 0
console.log(Order.Number(NaN, 1)) // -1
```

See also:
- `mapInput` - Use this order to compare objects by a number property
- `BigInt` - For bigint comparisons

**Signature**

```ts
declare const Number: Order<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L227)

Since v4.0.0