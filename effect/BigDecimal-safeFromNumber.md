Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.safeFromNumber

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

Returns `None` if the number is not finite (`NaN`, `+Infinity` or `-Infinity`).

**Example**

```ts
import * as assert from "node:assert"
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(BigDecimal.safeFromNumber(123), Option.some(BigDecimal.make(123n, 0)))
assert.deepStrictEqual(BigDecimal.safeFromNumber(123.456), Option.some(BigDecimal.make(123456n, 3)))
assert.deepStrictEqual(BigDecimal.safeFromNumber(Infinity), Option.none())
```

**Signature**

```ts
declare const safeFromNumber: (n: number) => Option.Option<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L861)

Since v3.11.0