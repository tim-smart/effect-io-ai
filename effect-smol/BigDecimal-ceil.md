Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.ceil

Calculate the ceiling of a `BigDecimal` at the given scale.

**Example**

```ts
import { ceil, fromStringUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  ceil(fromStringUnsafe("145"), -1),
  fromStringUnsafe("150")
)
assert.deepStrictEqual(ceil(fromStringUnsafe("-14.5")), fromStringUnsafe("-14"))
```

**Signature**

```ts
declare const ceil: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1531)

Since v4.0.0