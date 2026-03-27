Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.truncate

Truncate a `BigDecimal` at the given scale. This is the same operation as rounding away from zero.

**Example**

```ts
import { fromStringUnsafe, truncate } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  truncate(fromStringUnsafe("145"), -1),
  fromStringUnsafe("140")
)
assert.deepStrictEqual(
  truncate(fromStringUnsafe("-14.5")),
  fromStringUnsafe("-14")
)
```

**Signature**

```ts
declare const truncate: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1501)

Since v4.0.0