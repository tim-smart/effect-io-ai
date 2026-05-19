Package: `effect`<br />
Module: `Number`<br />

## Number.Order

An `Order` instance for `number` values.

**Example** (Comparing numbers)

```ts
import { Number } from "effect"

console.log(Number.Order(1, 2)) // -1
console.log(Number.Order(2, 1)) // 1
console.log(Number.Order(1, 1)) // 0
```

**Signature**

```ts
declare const Order: order.Order<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L215)

Since v2.0.0