Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isInteger

Checks whether a given `BigDecimal` is an integer.

**When to use**

Use to test whether a `BigDecimal` has no fractional decimal part.

**Example** (Checking integer decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.isInteger(BigDecimal.fromStringUnsafe("0")), true)
assert.deepStrictEqual(BigDecimal.isInteger(BigDecimal.fromStringUnsafe("1")), true)
assert.deepStrictEqual(BigDecimal.isInteger(BigDecimal.fromStringUnsafe("1.1")), false)
```

**Signature**

```ts
declare const isInteger: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1657)

Since v2.0.0