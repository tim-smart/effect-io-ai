Package: `effect`<br />
Module: `Order`<br />

## Order.isGreaterThan

Tests whether one value is strictly greater than another according to the given order.

When to use this:
- When you need a boolean predicate instead of an ordering result
- When checking if a value is greater than another in conditional logic
- When implementing range checks or comparisons

Behavior:
- Pure function: does not mutate inputs
- Returns `true` if the order returns `1` (first value is greater than second)
- Returns `false` for equal or lesser values
- Supports curried and uncurried call styles

**Example** (Greater Than)

```ts
import { Order } from "effect"

const isGreaterThanNumber = Order.isGreaterThan(Order.Number)

console.log(isGreaterThanNumber(2, 1)) // true
console.log(isGreaterThanNumber(1, 2)) // false
console.log(isGreaterThanNumber(1, 1)) // false
```

See also:
- `isGreaterThanOrEqualTo` - Non-strict greater than or equal
- `isLessThan` - Strict less than

**Signature**

```ts
declare const isGreaterThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L791)

Since v2.0.0