Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.unsafeFromNumber

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

Throws a `RangeError` if the number is not finite (`NaN`, `+Infinity` or `-Infinity`).

**Example**

```ts
import * as assert from "node:assert"
import { unsafeFromNumber, make } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeFromNumber(123), make(123n, 0))
assert.deepStrictEqual(unsafeFromNumber(123.456), make(123456n, 3))
```

**Signature**

```ts
declare const unsafeFromNumber: (n: number) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L822)

Since v3.11.0