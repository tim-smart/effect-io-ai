Package: `effect`<br />
Module: `Order`<br />

## Order.isLessThanOrEqualTo

Tests whether one value is less than or equal to another according to the given order.

When to use this:
- When you need a boolean predicate for non-strict comparison
- When checking if a value is within a range (inclusive lower bound)
- When implementing inclusive comparisons

Behavior:
- Pure function: does not mutate inputs
- Returns `true` if the order returns `-1` or `0` (less than or equal)
- Returns `false` only if the order returns `1` (greater than)
- Supports curried and uncurried call styles

**Example** (Less Than Or Equal)

```ts
import { Order } from "effect"

const isLessThanOrEqualToNumber = Order.isLessThanOrEqualTo(Order.Number)

console.log(isLessThanOrEqualToNumber(1, 2)) // true
console.log(isLessThanOrEqualToNumber(1, 1)) // true
console.log(isLessThanOrEqualToNumber(2, 1)) // false
```

See also:
- `isLessThan` - Strict less than
- `isGreaterThan` - Strict greater than

**Signature**

```ts
declare const isLessThanOrEqualTo: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L829)

Since v2.0.0