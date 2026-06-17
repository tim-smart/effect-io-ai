Package: `effect`<br />
Module: `Order`<br />

## Order.isBetween

Checks whether a value is between a minimum and a maximum (inclusive) according to the given order.

**When to use**

Use when you need range checks that respect domain-specific ordering, such as
dates, versions, or custom priorities, instead of JavaScript numeric
comparison.

**Details**

Returns `true` when the value is greater than or equal to minimum and less
than or equal to maximum. Values outside the range return `false`. Both
bounds are inclusive.

**Example** (Checking ranges)

```ts
import { Order } from "effect"

const betweenNumber = Order.isBetween(Order.Number)

console.log(betweenNumber(5, { minimum: 1, maximum: 10 })) // true
console.log(betweenNumber(1, { minimum: 1, maximum: 10 })) // true
console.log(betweenNumber(10, { minimum: 1, maximum: 10 })) // true
console.log(betweenNumber(0, { minimum: 1, maximum: 10 })) // false
console.log(betweenNumber(11, { minimum: 1, maximum: 10 })) // false
```

**See**

- `clamp` to clamp a value to a range
- `isLessThanOrEqualTo` for less than or equal check
- `isGreaterThanOrEqualTo` for greater than or equal check

**Signature**

```ts
declare const isBetween: <A>(O: Order<A>) => { (options: { minimum: A; maximum: A; }): (self: A) => boolean; (self: A, options: { minimum: A; maximum: A; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L926)

Since v4.0.0