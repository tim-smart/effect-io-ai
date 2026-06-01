Package: `effect`<br />
Module: `Order`<br />

## Order.Number

Order instance for numbers that compares them numerically.

**When to use**

Use when you need numeric ordering for numbers.

**Details**

`0` is considered equal to `-0`. All `NaN` values are considered equal to
each other, and any `NaN` is considered less than any non-`NaN` number. All
other values use standard numeric comparison.

**Example** (Number Ordering)

```ts
import { Order } from "effect"

console.log(Order.Number(1, 1)) // 0
console.log(Order.Number(1, 2)) // -1
console.log(Order.Number(2, 1)) // 1

console.log(Order.Number(0, -0)) // 0
console.log(Order.Number(NaN, 1)) // -1
```

**See**

- `mapInput` to compare objects by a number property
- `BigInt` for bigint comparisons

**Signature**

```ts
declare const Number: Order<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L245)

Since v4.0.0