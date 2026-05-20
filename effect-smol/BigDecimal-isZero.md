Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isZero

Checks if a given `BigDecimal` is `0`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1415)

Since v2.0.0