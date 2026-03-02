Package: `effect`<br />
Module: `Order`<br />

## Order.clamp

Clamps a value between a minimum and a maximum according to the given order.

When to use this:
- When you need to restrict a value to a specific range
- When implementing bounds checking and normalization
- When ensuring values stay within valid ranges

Behavior:
- Pure function: does not mutate inputs
- Returns the value if it's between minimum and maximum (inclusive)
- Returns minimum if the value is less than minimum
- Returns maximum if the value is greater than maximum
- Supports curried and uncurried call styles
- Requires that minimum <= maximum according to the order

**Example** (Clamping Values)

```ts
import { Order } from "effect"

const clamp = Order.clamp(Order.Number)({ minimum: 1, maximum: 5 })

console.log(clamp(3)) // 3
console.log(clamp(0)) // 1
console.log(clamp(6)) // 5
```

See also:
- `min` - Minimum of two values
- `max` - Maximum of two values
- `isBetween` - Check if a value is within a range

**Signature**

```ts
declare const clamp: <A>(O: Order<A>) => { (options: { minimum: A; maximum: A; }): (self: A) => A; (self: A, options: { minimum: A; maximum: A; }): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L977)

Since v2.0.0