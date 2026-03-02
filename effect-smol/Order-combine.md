Package: `effect`<br />
Module: `Order`<br />

## Order.combine

Combines two `Order` instances to create a new `Order` that first compares using the first `Order`,
and if the values are equal, then compares using the second `Order`.

When to use this:
- When you need multi-criteria comparison (e.g., sort by age, then by name)
- When creating composite orders from simpler orders
- When implementing lexicographic ordering

Behavior:
- Pure function: does not mutate inputs
- First applies the first order; if the result is non-zero, returns that result
- If the first order returns `0` (equal), applies the second order
- Returns the first non-zero result, or `0` if both orders return `0`

**Example** (Combining Orders)

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

See also:
- `combineAll` - Combine multiple orders from a collection
- `mapInput` - Transform orders to work with different types

**Signature**

```ts
declare const combine: { <A>(that: Order<A>): (self: Order<A>) => Order<A>; <A>(self: Order<A>, that: Order<A>): Order<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L378)

Since v2.0.0