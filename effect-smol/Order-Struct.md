Package: `effect`<br />
Module: `Order`<br />

## Order.Struct

Creates an `Order` for structs by applying the given `Order`s to each property in sequence.

When to use this:
- When comparing objects with multiple properties
- When you need multi-field comparison for structs
- When creating orders for complex data types

Behavior:
- Pure function: does not mutate inputs
- Compares structs field-by-field in the order of keys in the fields object
- Stops at the first non-zero comparison result
- Returns `0` only if all fields are equal
- Field order matters: earlier fields take precedence

**Example** (Struct Ordering)

```ts
import { Order } from "effect"

const personOrder = Order.Struct({
  name: Order.String,
  age: Order.Number
})

const person1 = { name: "Alice", age: 30 }
const person2 = { name: "Bob", age: 25 }
const person3 = { name: "Alice", age: 25 }

console.log(personOrder(person1, person2)) // -1 (Alice < Bob)
console.log(personOrder(person1, person3)) // 1 (same name, 30 > 25)
console.log(personOrder(person1, person1)) // 0
```

See also:
- `combine` - Combine orders manually
- `mapInput` - Extract and compare by a single property

**Signature**

```ts
declare const Struct: <const R extends { readonly [x: string]: Order<any>; }>(fields: R) => Order<{ [K in keyof R]: [R[K]] extends [Order<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L705)

Since v4.0.0