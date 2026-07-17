Package: `effect`<br />
Module: `Order`<br />

## Order.combine

Combines two `Order` instances to create a new `Order` that first compares using the first `Order`,
and if the values are equal, then compares using the second `Order`.

**When to use**

Use when you need tie-breaking with exactly two orders.

**Details**

First applies the first order. If the result is non-zero, that result is
returned; otherwise, the second order is applied. The result is the first
non-zero comparison result, or `0` if both orders return `0`.

**Example** (Combining two Orders)

```ts
import { Order } from "effect"

const byAge = Order.mapInput(
  Order.Number,
  (person: { name: string; age: number }) => person.age
)
const byName = Order.mapInput(
  Order.String,
  (person: { name: string; age: number }) => person.name
)
const byAgeAndName = Order.combine(byAge, byName)

const person1 = { name: "Alice", age: 30 }
const person2 = { name: "Bob", age: 30 }
const person3 = { name: "Charlie", age: 25 }

console.log(byAgeAndName(person1, person2)) // -1 (Same age, Alice < Bob)
console.log(byAgeAndName(person1, person3)) // 1 (Alice (30) > Charlie (25))
```

**See**

- `combineAll` to combine multiple orders from a collection
- `mapInput` to transform orders to work with different types

**Signature**

```ts
declare const combine: { <A>(that: Order<A>): (self: Order<A>) => Order<A>; <A>(self: Order<A>, that: Order<A>): Order<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L315)

Since v2.0.0