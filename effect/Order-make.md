Package: `effect`<br />
Module: `Order`<br />

## Order.make

Creates a new `Order` instance from a comparison function.

**When to use**

Use when you need a sorting rule not covered by the built-in orders or input
mapping helpers, and you can provide a total comparison.

**Details**

Uses reference equality (`===`) as a shortcut: if `self === that`, it returns
`0` without calling the comparison function. The comparison function should
return `-1`, `0`, or `1`, and the returned order satisfies total ordering
laws when the comparison function does.

**Example** (Creating an Order)

```ts
import { Order } from "effect"

const byAge = Order.make<{ name: string; age: number }>((self, that) => {
  if (self.age < that.age) return -1
  if (self.age > that.age) return 1
  return 0
})

console.log(byAge({ name: "Alice", age: 30 }, { name: "Bob", age: 25 })) // 1
console.log(byAge({ name: "Alice", age: 25 }, { name: "Bob", age: 30 })) // -1
```

**See**

- `mapInput` to transform an order by mapping the input type
- `combine` to combine multiple orders

**Signature**

```ts
declare const make: <A>(compare: (self: A, that: A) => -1 | 0 | 1) => Order<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L111)

Since v2.0.0