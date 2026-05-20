Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.max

Returns the maximum between two `BigDecimal`s.

**Example** (Selecting the larger decimal)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.max(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  BigDecimal.fromStringUnsafe("3")
)
```

**Signature**

```ts
declare const max: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L873)

Since v2.0.0