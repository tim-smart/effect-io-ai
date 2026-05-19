Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.min

Returns the minimum between two `BigDecimal`s.

**Example** (Selecting the smaller decimal)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.min(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  BigDecimal.fromStringUnsafe("2")
)
```

**Signature**

```ts
declare const min: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L841)

Since v2.0.0