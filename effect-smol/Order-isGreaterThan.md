Package: `effect`<br />
Module: `Order`<br />

## Order.isGreaterThan

Checks whether one value is strictly greater than another according to the given order.

**When to use**

Use when you need a boolean greater-than predicate using an `Order`.

**Details**

Returns `true` if the order returns `1`, meaning the first value is greater
than the second. Equal or lesser values return `false`.

**Example** (Greater Than)

```ts
import { Order } from "effect"

const isGreaterThanNumber = Order.isGreaterThan(Order.Number)

console.log(isGreaterThanNumber(2, 1)) // true
console.log(isGreaterThanNumber(1, 2)) // false
console.log(isGreaterThanNumber(1, 1)) // false
```

**See**

- `isGreaterThanOrEqualTo` for non-strict greater than or equal
- `isLessThan` for strict less than

**Signature**

```ts
declare const isGreaterThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L696)

Since v4.0.0