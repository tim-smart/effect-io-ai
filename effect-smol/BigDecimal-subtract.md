Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.subtract

Provides a subtraction operation on `BigDecimal`s.

**When to use**

Use to subtract one `BigDecimal` value from another.

**Example** (Subtracting decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.subtract(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  BigDecimal.fromStringUnsafe("-1")
)
```

**Signature**

```ts
declare const subtract: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L494)

Since v2.0.0