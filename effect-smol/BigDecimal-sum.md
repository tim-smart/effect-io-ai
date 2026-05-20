Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sum

Provides an addition operation on `BigDecimal`s.

**Example** (Adding decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.sum(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  BigDecimal.fromStringUnsafe("5")
)
```

**Signature**

```ts
declare const sum: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L268)

Since v2.0.0