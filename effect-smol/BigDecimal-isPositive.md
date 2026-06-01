Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isPositive

Checks whether a given `BigDecimal` is positive.

**When to use**

Use to test whether a `BigDecimal` is greater than zero.

**Example** (Checking positive decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.isPositive(BigDecimal.fromStringUnsafe("-1")), false)
assert.deepStrictEqual(BigDecimal.isPositive(BigDecimal.fromStringUnsafe("0")), false)
assert.deepStrictEqual(BigDecimal.isPositive(BigDecimal.fromStringUnsafe("1")), true)
```

**Signature**

```ts
declare const isPositive: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1725)

Since v2.0.0