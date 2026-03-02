Package: `effect`<br />
Module: `Array`<br />

## Array.makeOrder

Creates an `Order` for arrays based on an element `Order`. Arrays are
compared element-wise; if all compared elements are equal, shorter arrays
come first.

**Example** (Comparing arrays)

```ts
import { Array, Order } from "effect"

const arrayOrder = Array.makeOrder(Order.Number)
console.log(arrayOrder([1, 2], [1, 3])) // -1
```

**See**

- `makeEquivalence` — create an equivalence for arrays

**Signature**

```ts
declare const makeOrder: <A>(O: Order.Order<A>) => Order.Order<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3786)

Since v2.0.0