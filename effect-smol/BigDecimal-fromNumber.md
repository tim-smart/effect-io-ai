Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromNumber

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

Returns `Option.none()` for `NaN`, `+Infinity` or `-Infinity`.

**Example**

```ts
import { BigDecimal, Option } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.fromNumber(123), Option.some(BigDecimal.make(123n, 0)))
assert.deepStrictEqual(
  BigDecimal.fromNumber(123.456),
  Option.some(BigDecimal.make(123456n, 3))
)
assert.deepStrictEqual(BigDecimal.fromNumber(Infinity), Option.none())
```

**Signature**

```ts
declare const fromNumber: (n: number) => Option.Option<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1108)

Since v4.0.0