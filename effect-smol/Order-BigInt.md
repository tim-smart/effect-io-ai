Package: `effect`<br />
Module: `Order`<br />

## Order.BigInt

Order instance for bigints that compares them numerically.

**When to use**

Use when you need numeric ordering for `bigint` values.

**Details**

Uses standard numeric comparison for bigint values and handles arbitrarily
large integers.

**Example** (BigInt Ordering)

```ts
import { Order } from "effect"

console.log(Order.BigInt(1n, 2n)) // -1
console.log(Order.BigInt(2n, 1n)) // 1
console.log(Order.BigInt(1n, 1n)) // 0
```

**See**

- `Number` for regular number comparisons
- `mapInput` to compare objects by a bigint property

**Signature**

```ts
declare const BigInt: Order<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L306)

Since v4.0.0