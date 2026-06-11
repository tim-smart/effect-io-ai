Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.ceil

Computes the ceiling of a `BigDecimal` at the given scale.

**When to use**

Use to round a decimal toward positive infinity at a requested scale.

**Details**

The default scale is `0`. Positive scales keep digits to the right of the
decimal point, and negative scales round positions to the left of the decimal
point.

**See**

- `floor` for rounding toward negative infinity
- `truncate` for rounding toward zero
- `round` for configurable rounding modes

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1870)

Since v3.16.0