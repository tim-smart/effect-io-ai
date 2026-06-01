Package: `effect`<br />
Module: `Order`<br />

## Order.isLessThan

Checks whether one value is strictly less than another according to the given order.

**When to use**

Use when you need a boolean less-than predicate using an `Order`.

**Details**

Returns `true` if the order returns `-1`, meaning the first value is less
than the second. Equal or greater values return `false`.

**Example** (Less Than)

```ts
import { Order } from "effect"

const isLessThanNumber = Order.isLessThan(Order.Number)

console.log(isLessThanNumber(1, 2)) // true
console.log(isLessThanNumber(2, 1)) // false
console.log(isLessThanNumber(1, 1)) // false
```

**See**

- `isLessThanOrEqualTo` for non-strict less than or equal
- `isGreaterThan` for strict greater than

**Signature**

```ts
declare const isLessThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L730)

Since v4.0.0