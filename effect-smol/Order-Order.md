Package: `effect`<br />
Module: `Order`<br />

## Order.Order

Represents a total ordering for values of type `A`.

When to use this:
- When you need to define how values of a type should be compared
- When implementing sorting, searching, or ordered data structures
- When composing multiple comparison criteria

Behavior:
- Pure function: does not mutate inputs or have side effects
- Returns `-1` if the first value is less than the second
- Returns `0` if the values are equal according to this ordering
- Returns `1` if the first value is greater than the second
- Must satisfy total ordering laws (totality, antisymmetry, transitivity)

**Example** (Custom Order)

```ts
import { Order } from "effect"

const byAge: Order.Order<{ name: string; age: number }> = (self, that) => {
  if (self.age < that.age) return -1
  if (self.age > that.age) return 1
  return 0
}

const person1 = { name: "Alice", age: 30 }
const person2 = { name: "Bob", age: 25 }
console.log(byAge(person1, person2)) // 1
```

See also:
- `make` - Create an order from a comparison function
- `Ordering` - The result type of comparisons

**Signature**

```ts
export interface Order<in A> {
  (self: A, that: A): Ordering
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L95)

Since v2.0.0