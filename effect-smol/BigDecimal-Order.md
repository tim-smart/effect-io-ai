Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.Order

Provides an `Order` instance for `BigDecimal` that allows comparing and sorting BigDecimal values.

**Example**

```ts
import { BigDecimal } from "effect"

const a = BigDecimal.fromNumberUnsafe(1.5)
const b = BigDecimal.fromNumberUnsafe(2.3)
const c = BigDecimal.fromNumberUnsafe(1.5)

console.log(BigDecimal.Order(a, b)) // -1 (a < b)
console.log(BigDecimal.Order(b, a)) // 1 (b > a)
console.log(BigDecimal.Order(a, c)) // 0 (a === c)
```

**Signature**

```ts
declare const Order: order.Order<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L590)

Since v2.0.0