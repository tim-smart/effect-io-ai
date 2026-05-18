Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.format

Formats a `BigDecimal` as a string.

The value is normalized before formatting. Scientific notation is used when
the absolute value of the normalized scale is at least `16`; otherwise plain
decimal notation is used.

**Example** (Formatting decimals)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1268)

Since v2.0.0