Package: `effect`<br />
Module: `Order`<br />

## Order.isBetween

Tests whether a value is between a minimum and a maximum (inclusive) according to the given order.

When to use this:
- When validating that a value is within a valid range
- When implementing range checks for bounds validation
- When filtering or selecting values within a range

Behavior:
- Pure function: does not mutate inputs
- Returns `true` if the value is greater than or equal to minimum and less than or equal to maximum
- Returns `false` if the value is outside the range
- Supports curried and uncurried call styles
- Both bounds are inclusive

**Example** (Checking Range)

```ts
import { Order } from "effect"

const betweenNumber = Order.isBetween(Order.Number)

console.log(betweenNumber(5, { minimum: 1, maximum: 10 })) // true
console.log(betweenNumber(1, { minimum: 1, maximum: 10 })) // true
console.log(betweenNumber(10, { minimum: 1, maximum: 10 })) // true
console.log(betweenNumber(0, { minimum: 1, maximum: 10 })) // false
console.log(betweenNumber(11, { minimum: 1, maximum: 10 })) // false
```

See also:
- `clamp` - Clamp a value to a range
- `isLessThanOrEqualTo` - Less than or equal check
- `isGreaterThanOrEqualTo` - Greater than or equal check

**Signature**

```ts
declare const isBetween: <A>(O: Order<A>) => { (options: { minimum: A; maximum: A; }): (self: A) => boolean; (self: A, options: { minimum: A; maximum: A; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L1039)

Since v4.0.0