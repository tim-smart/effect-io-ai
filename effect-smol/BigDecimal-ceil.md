Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.ceil

Calculate the ceiling of a `BigDecimal` at the given scale.

**Example** (Rounding decimals up)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.ceil(BigDecimal.fromStringUnsafe("145"), -1),
  BigDecimal.fromStringUnsafe("150")
)
assert.deepStrictEqual(BigDecimal.ceil(BigDecimal.fromStringUnsafe("-14.5")), BigDecimal.fromStringUnsafe("-14"))
```

**Signature**

```ts
declare const ceil: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1579)

Since v3.16.0