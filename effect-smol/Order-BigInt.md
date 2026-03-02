Package: `effect`<br />
Module: `Order`<br />

## Order.BigInt

An `Order` instance for bigints that compares them numerically.

When to use this:
- When comparing bigint values for sorting or searching
- As a base for creating orders on types containing bigints
- When working with large integers that exceed number precision

Behavior:
- Pure function: does not mutate inputs
- Uses standard numeric comparison for bigint values
- Handles arbitrarily large integers

**Example** (BigInt Ordering)

```ts
import { Order } from "effect"

console.log(Order.BigInt(1n, 2n)) // -1
console.log(Order.BigInt(2n, 1n)) // 1
console.log(Order.BigInt(1n, 1n)) // 0
```

See also:
- `Number` - For regular number comparisons
- `mapInput` - Use this order to compare objects by a bigint property

**Signature**

```ts
declare const BigInt: Order<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L295)

Since v4.0.0