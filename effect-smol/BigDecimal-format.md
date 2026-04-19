Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.format

Formats a given `BigDecimal` as a `string`.

If the scale of the `BigDecimal` is greater than or equal to 16, the `BigDecimal` will
be formatted in scientific notation.

**Example**

```ts
import { format, fromStringUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(format(fromStringUnsafe("-5")), "-5")
assert.deepStrictEqual(format(fromStringUnsafe("123.456")), "123.456")
assert.deepStrictEqual(format(fromStringUnsafe("-0.00000123")), "-0.00000123")
```

**Signature**

```ts
declare const format: (n: BigDecimal) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1229)

Since v2.0.0