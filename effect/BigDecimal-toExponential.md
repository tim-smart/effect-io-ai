Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.toExponential

Formats a given `BigDecimal` as a `string` in scientific notation.

**Example**

```ts
import * as assert from "node:assert"
import { toExponential, make } from "effect/BigDecimal"

assert.deepStrictEqual(toExponential(make(123456n, -5)), "1.23456e+10")
```

**Signature**

```ts
declare const toExponential: (n: BigDecimal) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1022)

Since v3.11.0