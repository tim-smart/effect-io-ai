Package: `effect`<br />
Module: `String`<br />

## String.Order

Provides an `Order` instance for comparing strings using lexicographic
ordering.

**Example** (Comparing strings lexicographically)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L79)

Since v2.0.0