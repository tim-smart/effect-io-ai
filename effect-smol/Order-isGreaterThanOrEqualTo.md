Package: `effect`<br />
Module: `Order`<br />

## Order.isGreaterThanOrEqualTo

Tests whether one value is greater than or equal to another according to the given order.

When to use this:
- When you need a boolean predicate for non-strict comparison
- When checking if a value is within a range (inclusive upper bound)
- When implementing inclusive comparisons

Behavior:
- Pure function: does not mutate inputs
- Returns `true` if the order returns `1` or `0` (greater than or equal)
- Returns `false` only if the order returns `-1` (less than)
- Supports curried and uncurried call styles

**Example** (Greater Than Or Equal)

```ts
import { Order } from "effect"

const isGreaterThanOrEqualToNumber = Order.isGreaterThanOrEqualTo(Order.Number)

console.log(isGreaterThanOrEqualToNumber(2, 1)) // true
console.log(isGreaterThanOrEqualToNumber(1, 1)) // true
console.log(isGreaterThanOrEqualToNumber(1, 2)) // false
```

See also:
- `isGreaterThan` - Strict greater than
- `isLessThanOrEqualTo` - Less than or equal

**Signature**

```ts
declare const isGreaterThanOrEqualTo: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L867)

Since v2.0.0