Package: `effect`<br />
Module: `Order`<br />

## Order.isLessThan

Tests whether one value is strictly less than another according to the given order.

When to use this:
- When you need a boolean predicate instead of an ordering result
- When checking if a value is less than another in conditional logic
- When implementing range checks or comparisons

Behavior:
- Pure function: does not mutate inputs
- Returns `true` if the order returns `-1` (first value is less than second)
- Returns `false` for equal or greater values
- Supports curried and uncurried call styles

**Example** (Less Than)

```ts
import { Order } from "effect"

const isLessThanNumber = Order.isLessThan(Order.Number)

console.log(isLessThanNumber(1, 2)) // true
console.log(isLessThanNumber(2, 1)) // false
console.log(isLessThanNumber(1, 1)) // false
```

See also:
- `isLessThanOrEqualTo` - Non-strict less than or equal
- `isGreaterThan` - Strict greater than

**Signature**

```ts
declare const isLessThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L753)

Since v2.0.0