Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.floor

Calculate the floor of a `BigDecimal` at the given scale.

**When to use**

Use to round a decimal toward negative infinity at a requested scale.

**Example** (Rounding decimals down)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.floor(BigDecimal.fromStringUnsafe("145"), -1),
  BigDecimal.fromStringUnsafe("140")
)
assert.deepStrictEqual(
  BigDecimal.floor(BigDecimal.fromStringUnsafe("-14.5")),
  BigDecimal.fromStringUnsafe("-15")
)
```

**See**

- `ceil` for rounding toward positive infinity
- `truncate` for rounding toward zero
- `round` for configurable rounding modes

**Signature**

```ts
declare const floor: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1975)

Since v3.16.0