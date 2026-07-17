Package: `effect`<br />
Module: `Order`<br />

## Order.Order

Represents a total ordering for values of type `A`.

**When to use**

Use when you need to define how values of a type are compared.

**Details**

An order returns `-1` when the first value is less than the second, `0` when
the values are equal according to this ordering, and `1` when the first value
is greater than the second. It must satisfy total ordering laws: totality,
antisymmetry, and transitivity.

**Example** (Defining a custom Order)

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

**See**

- `make` to create an order from a comparison function
- `Ordering` for the result type of comparisons

**Signature**

```ts
export interface Order<in A> {
  (self: A, that: A): Ordering
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L53)

Since v2.0.0