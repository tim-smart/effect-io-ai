Package: `effect`<br />
Module: `Order`<br />

## Order.make

Creates a new `Order` instance from a comparison function.

When to use this:
- When creating a custom order for a type that doesn't have a built-in order
- When you need fine-grained control over comparison logic
- When implementing orders for complex types

Behavior:
- Pure function: does not mutate inputs
- Uses reference equality (`===`) as a shortcut: if `self === that`, returns `0` without calling the comparison function
- The comparison function should return `-1`, `0`, or `1` based on the comparison result
- The returned order satisfies total ordering laws if the comparison function does

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

See also:
- `mapInput` - Transform an order by mapping the input type
- `combine` - Combine multiple orders

**Signature**

```ts
declare const make: <A>(compare: (self: A, that: A) => -1 | 0 | 1) => Order<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L153)

Since v2.0.0