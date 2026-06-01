Package: `effect`<br />
Module: `Order`<br />

## Order.mapInput

Transforms an `Order` on type `A` into an `Order` on type `B` by providing a function that
maps values of type `B` to values of type `A`.

**When to use**

Use when you need to adapt an `Order` to compare a larger value by one
derived property.

**Details**

Applies the mapping function to both values before comparison. The mapping
function should be pure and not have side effects so the ordering properties
of the original order are preserved.

**Example** (Mapping Input)

```ts
import { Order } from "effect"

const byLength = Order.mapInput(Order.Number, (s: string) => s.length)

console.log(byLength("a", "bb")) // -1
console.log(byLength("bb", "a")) // 1
console.log(byLength("aa", "bb")) // 0
```

**See**

- `combine` to combine mapped orders for multi-criteria comparison
- `Struct` to create orders for structs with multiple fields

**Signature**

```ts
declare const mapInput: { <B, A>(f: (b: B) => A): (self: Order<A>) => Order<B>; <A, B>(self: Order<A>, f: (b: B) => A): Order<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L512)

Since v2.0.0