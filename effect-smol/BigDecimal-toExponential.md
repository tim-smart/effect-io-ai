Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.toExponential

Formats a given `BigDecimal` as a `string` in scientific notation.

**When to use**

Use to render a `BigDecimal` in scientific notation.

**Example** (Formatting decimals exponentially)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.toExponential(BigDecimal.make(123456n, -5)), "1.23456e+10")
```

**See**

- `format` for plain decimal formatting when possible

**Signature**

```ts
declare const toExponential: (n: BigDecimal) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1585)

Since v3.11.0