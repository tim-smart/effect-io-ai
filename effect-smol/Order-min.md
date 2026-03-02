Package: `effect`<br />
Module: `Order`<br />

## Order.min

Returns the minimum of two values according to the given order. If they are equal, returns the first argument.

When to use this:
- When you need to find the smaller of two values
- When implementing min/max operations
- When selecting values based on ordering

Behavior:
- Pure function: does not mutate inputs
- Returns the value that compares as less than or equal to the other
- If values are equal, returns the first argument
- Supports curried and uncurried call styles

**Example** (Minimum Value)

```ts
import { Order } from "effect"

const minNumber = Order.min(Order.Number)

console.log(minNumber(1, 2)) // 1
console.log(minNumber(2, 1)) // 1
console.log(minNumber(1, 1)) // 1
```

See also:
- `max` - Maximum of two values
- `clamp` - Clamp a value between min and max

**Signature**

```ts
declare const min: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L898)

Since v2.0.0