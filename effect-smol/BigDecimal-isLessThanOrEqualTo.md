Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isLessThanOrEqualTo

Checks if a given `BigDecimal` is less than or equal to the provided one.

**Example**

```ts
import { fromStringUnsafe, isLessThanOrEqualTo } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  isLessThanOrEqualTo(fromStringUnsafe("2"), fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  isLessThanOrEqualTo(fromStringUnsafe("3"), fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  isLessThanOrEqualTo(fromStringUnsafe("4"), fromStringUnsafe("3")),
  false
)
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L666)

Since v2.0.0