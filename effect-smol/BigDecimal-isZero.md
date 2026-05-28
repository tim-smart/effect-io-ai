Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isZero

Checks whether a given `BigDecimal` is `0`.

**When to use**

Use to test whether a `BigDecimal` is exactly zero.

**Example** (Checking zero decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.isZero(BigDecimal.fromStringUnsafe("0")), true)
assert.deepStrictEqual(BigDecimal.isZero(BigDecimal.fromStringUnsafe("1")), false)
```

**Signature**

```ts
declare const isZero: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1677)

Since v2.0.0