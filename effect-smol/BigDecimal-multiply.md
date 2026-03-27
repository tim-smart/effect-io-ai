Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.multiply

Provides a multiplication operation on `BigDecimal`s.

**Example**

```ts
import { fromStringUnsafe, multiply } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  multiply(fromStringUnsafe("2"), fromStringUnsafe("3")),
  fromStringUnsafe("6")
)
```

**Signature**

```ts
declare const multiply: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L320)

Since v2.0.0