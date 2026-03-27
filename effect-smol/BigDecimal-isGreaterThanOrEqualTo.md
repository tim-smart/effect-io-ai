Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isGreaterThanOrEqualTo

Checks if a given `BigDecimal` is greater than or equal to the provided one.

**Example**

```ts
import { fromStringUnsafe, isGreaterThanOrEqualTo } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  isGreaterThanOrEqualTo(fromStringUnsafe("2"), fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  isGreaterThanOrEqualTo(fromStringUnsafe("3"), fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  isGreaterThanOrEqualTo(fromStringUnsafe("4"), fromStringUnsafe("3")),
  true
)
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L722)

Since v2.0.0