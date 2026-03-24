Package: `effect`<br />
Module: `Struct`<br />

## Struct.makeOrder

Creates an `Order` for a struct by providing an `Order` for each property.
Properties are compared in the order they appear in the fields object; the
first non-zero comparison determines the result.

Alias of `Order.Struct`.

- Use to sort or compare structs by multiple fields with lexicographic
  priority.
- The order of keys in the `fields` object determines comparison priority.

**Example** (Ordering structs by name then age)

```ts
import { Number, String, Struct } from "effect"

const PersonOrder = Struct.makeOrder({
  name: String.Order,
  age: Number.Order
})

console.log(PersonOrder({ name: "Alice", age: 30 }, { name: "Bob", age: 25 }))
// -1 (Alice comes before Bob)
```

**See**

- `makeEquivalence` – create an `Equivalence` for structs

**Signature**

```ts
declare const makeOrder: <const R extends { readonly [x: string]: order.Order<any>; }>(fields: R) => order.Order<{ [K in keyof R]: [R[K]] extends [order.Order<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L568)

Since v2.0.0