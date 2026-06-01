Package: `effect`<br />
Module: `Order`<br />

## Order.Array

Creates an `Order` for arrays by applying the given `Order` to each element, then comparing by length if all elements are equal.

**When to use**

Use when you need lexicographic ordering for arrays of one element type.

**Details**

Compares arrays element-by-element using the provided order and stops at the
first non-zero comparison result. If all elements are equal, shorter arrays
are less than longer arrays. The result is `0` only if arrays have the same
length and all elements are equal.

**Example** (Array Element Ordering)

```ts
import { Order } from "effect"

const arrayOrder = Order.Array(Order.Number)

console.log(arrayOrder([1, 2], [1, 3])) // -1
console.log(arrayOrder([1, 2], [1, 2, 3])) // -1 (shorter array is less)
console.log(arrayOrder([1, 2, 3], [1, 2])) // 1 (longer array is greater)
console.log(arrayOrder([1, 2], [1, 2])) // 0
```

**See**

- `Tuple` for type-safe tuple ordering

**Signature**

```ts
declare const Array: <A>(O: Order<A>) => Order<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L646)

Since v4.0.0