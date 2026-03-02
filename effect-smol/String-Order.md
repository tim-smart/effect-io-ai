Package: `effect`<br />
Module: `String`<br />

## String.Order

`Order` instance for comparing strings using lexicographic ordering.

**Example**

```ts
import { String } from "effect"

console.log(String.Order("apple", "banana")) // -1
console.log(String.Order("banana", "apple")) // 1
console.log(String.Order("apple", "apple")) // 0
```

**Signature**

```ts
declare const Order: order.Order<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L59)

Since v2.0.0