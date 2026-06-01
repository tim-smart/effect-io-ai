Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isNegative

Checks whether a given `BigDecimal` is negative.

**When to use**

Use to test whether a `BigDecimal` is less than zero.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1702)

Since v2.0.0