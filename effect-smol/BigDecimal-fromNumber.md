Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromNumber

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

Returns `undefined` for `NaN`, `+Infinity` or `-Infinity`.

**Example**

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.fromNumber(123), BigDecimal.make(123n, 0))
assert.deepStrictEqual(
  BigDecimal.fromNumber(123.456),
  BigDecimal.make(123456n, 3)
)
assert.deepStrictEqual(BigDecimal.fromNumber(Infinity), undefined)
```

**Signature**

```ts
declare const fromNumber: (n: number) => BigDecimal | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1055)

Since v4.0.0