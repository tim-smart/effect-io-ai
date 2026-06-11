Package: `effect`<br />
Module: `Order`<br />

## Order.isLessThanOrEqualTo

Checks whether one value is less than or equal to another according to the given order.

**When to use**

Use when you need a boolean less-than-or-equal predicate using an `Order`.

**Details**

Returns `true` if the order returns `-1` or `0`, and returns `false` only if
the order returns `1`.

**Example** (Less Than Or Equal)

```ts
import { Order } from "effect"

const isLessThanOrEqualToNumber = Order.isLessThanOrEqualTo(Order.Number)

console.log(isLessThanOrEqualToNumber(1, 2)) // true
console.log(isLessThanOrEqualToNumber(1, 1)) // true
console.log(isLessThanOrEqualToNumber(2, 1)) // false
```

**See**

- `isLessThan` for strict less than
- `isGreaterThan` for strict greater than

**Signature**

```ts
declare const isLessThanOrEqualTo: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L730)

Since v4.0.0