Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sum

Provides an addition operation on `BigDecimal`s.

**Example**

```ts
import { fromStringUnsafe, sum } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  sum(fromStringUnsafe("2"), fromStringUnsafe("3")),
  fromStringUnsafe("5")
)
```

**Signature**

```ts
declare const sum: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L253)

Since v2.0.0