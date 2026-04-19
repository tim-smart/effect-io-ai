Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.max

Returns the maximum between two `BigDecimal`s.

**Example**

```ts
import { fromStringUnsafe, max } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  max(fromStringUnsafe("2"), fromStringUnsafe("3")),
  fromStringUnsafe("3")
)
```

**Signature**

```ts
declare const max: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L847)

Since v2.0.0