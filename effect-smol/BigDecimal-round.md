Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.round

Computes a rounded `BigDecimal` at the given scale with the specified rounding mode.

**When to use**

Use to round a decimal at a requested scale with an explicit rounding mode.

**Example** (Rounding decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.round(BigDecimal.fromStringUnsafe("145"), { mode: "from-zero", scale: -1 }),
  BigDecimal.fromStringUnsafe("150")
)
assert.deepStrictEqual(
  BigDecimal.round(BigDecimal.fromStringUnsafe("-14.5")),
  BigDecimal.fromStringUnsafe("-15")
)
```

**See**

- `ceil` for fixed rounding toward positive infinity
- `floor` for fixed rounding toward negative infinity
- `truncate` for fixed rounding toward zero

**Signature**

```ts
declare const round: { (options: { scale?: number; mode?: RoundingMode; }): (self: BigDecimal) => BigDecimal; (n: BigDecimal, options?: { scale?: number; mode?: RoundingMode; }): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1800)

Since v3.16.0