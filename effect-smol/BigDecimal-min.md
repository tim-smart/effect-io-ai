Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.min

Returns the minimum between two `BigDecimal`s.

**Example**

```ts
import { fromStringUnsafe, min } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  min(fromStringUnsafe("2"), fromStringUnsafe("3")),
  fromStringUnsafe("2")
)
```

**Signature**

```ts
declare const min: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L767)

Since v2.0.0