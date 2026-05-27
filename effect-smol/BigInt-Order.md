Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.Order

Provides an `Order` instance for `bigint` that allows comparing and sorting BigInt values.

**When to use**

Use when an API needs an `Order` instance for `bigint` values.

**Example** (Comparing bigints with Order)

```ts
import { BigInt } from "effect"

const a = 123n
const b = 456n
const c = 123n

console.log(BigInt.Order(a, b)) // -1 (a < b)
console.log(BigInt.Order(b, a)) // 1 (b > a)
console.log(BigInt.Order(a, c)) // 0 (a === c)
```

**Signature**

```ts
declare const Order: order.Order<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L355)

Since v2.0.0