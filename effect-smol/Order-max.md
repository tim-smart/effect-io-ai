Package: `effect`<br />
Module: `Order`<br />

## Order.max

Returns the maximum of two values according to the given order. If they are equal, returns the first argument.

When to use this:
- When you need to find the larger of two values
- When implementing min/max operations
- When selecting values based on ordering

Behavior:
- Pure function: does not mutate inputs
- Returns the value that compares as greater than or equal to the other
- If values are equal, returns the first argument
- Supports curried and uncurried call styles

**Example** (Maximum Value)

```ts
import { Order } from "effect"

const maxNumber = Order.max(Order.Number)

console.log(maxNumber(1, 2)) // 2
console.log(maxNumber(2, 1)) // 2
console.log(maxNumber(1, 1)) // 1
```

See also:
- `min` - Minimum of two values
- `clamp` - Clamp a value between min and max

**Signature**

```ts
declare const max: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L936)

Since v2.0.0