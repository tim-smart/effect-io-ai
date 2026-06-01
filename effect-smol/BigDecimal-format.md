Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.format

Formats a `BigDecimal` as a string.

**When to use**

Use to render a `BigDecimal` as plain decimal text when possible.

**Details**

The value is normalized before formatting. Scientific notation is used when
the absolute value of the normalized scale is at least `16`; otherwise plain
decimal notation is used.

**Example** (Formatting decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.format(BigDecimal.fromStringUnsafe("-5")), "-5")
assert.deepStrictEqual(BigDecimal.format(BigDecimal.fromStringUnsafe("123.456")), "123.456")
assert.deepStrictEqual(BigDecimal.format(BigDecimal.fromStringUnsafe("-0.00000123")), "-0.00000123")
```

**See**

- `toExponential` for always rendering scientific notation

**Signature**

```ts
declare const format: (n: BigDecimal) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1535)

Since v2.0.0