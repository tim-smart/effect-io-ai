Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.subtract

Provides a subtraction operation on `BigDecimal`s.

**Example**

```ts
import { fromStringUnsafe, subtract } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  subtract(fromStringUnsafe("2"), fromStringUnsafe("3")),
  fromStringUnsafe("-1")
)
```

**Signature**

```ts
declare const subtract: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L380)

Since v2.0.0