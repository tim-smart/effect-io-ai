Package: `effect`<br />
Module: `Order`<br />

## Order.isGreaterThanOrEqualTo

Checks whether one value is greater than or equal to another according to the given order.

**When to use**

Use when you need a boolean greater-than-or-equal predicate using an
`Order`.

**Details**

Returns `true` if the order returns `1` or `0`, and returns `false` only if
the order returns `-1`.

**Example** (Checking greater-than-or-equal comparisons)

```ts
import { Order } from "effect"

const isGreaterThanOrEqualToNumber = Order.isGreaterThanOrEqualTo(Order.Number)

console.log(isGreaterThanOrEqualToNumber(2, 1)) // true
console.log(isGreaterThanOrEqualToNumber(1, 1)) // true
console.log(isGreaterThanOrEqualToNumber(1, 2)) // false
```

**See**

- `isGreaterThan` for strict greater than
- `isLessThanOrEqualTo` for less than or equal

**Signature**

```ts
declare const isGreaterThanOrEqualTo: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L765)

Since v4.0.0