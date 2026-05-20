Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isNegative

Checks if a given `BigDecimal` is negative.

**Example** (Checking negative decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.isNegative(BigDecimal.fromStringUnsafe("-1")), true)
assert.deepStrictEqual(BigDecimal.isNegative(BigDecimal.fromStringUnsafe("0")), false)
assert.deepStrictEqual(BigDecimal.isNegative(BigDecimal.fromStringUnsafe("1")), false)
```

**Signature**

```ts
declare const isNegative: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1434)

Since v2.0.0