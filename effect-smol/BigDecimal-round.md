Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.round

Rounds a `BigDecimal` at the given scale with the specified rounding mode.

**Example**

```ts
import { fromStringUnsafe, round } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  round(fromStringUnsafe("145"), { mode: "from-zero", scale: -1 }),
  fromStringUnsafe("150")
)
assert.deepStrictEqual(
  round(fromStringUnsafe("-14.5")),
  fromStringUnsafe("-15")
)
```

**Signature**

```ts
declare const round: { (options: { scale?: number; mode?: RoundingMode; }): (self: BigDecimal) => BigDecimal; (n: BigDecimal, options?: { scale?: number; mode?: RoundingMode; }): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1376)

Since v4.0.0