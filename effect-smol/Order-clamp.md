Package: `effect`<br />
Module: `Order`<br />

## Order.clamp

Restricts a value between a minimum and a maximum according to the given order.

**When to use**

Use when you need to clamp a value to an inclusive range according to an
`Order`.

**Details**

Returns the value itself when it is between minimum and maximum, inclusive.
Values below the range return minimum, and values above the range return
maximum. The minimum must be less than or equal to the maximum according to
the order.

**Example** (Clamping values)

```ts
import { Order } from "effect"

const clamp = Order.clamp(Order.Number)({ minimum: 1, maximum: 5 })

console.log(clamp(3)) // 3
console.log(clamp(0)) // 1
console.log(clamp(6)) // 5
```

**See**

- `min` for the minimum of two values
- `max` for the maximum of two values
- `isBetween` to check if a value is within a range

**Signature**

```ts
declare const clamp: <A>(O: Order<A>) => { (options: { minimum: A; maximum: A; }): (self: A) => A; (self: A, options: { minimum: A; maximum: A; }): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L873)

Since v2.0.0