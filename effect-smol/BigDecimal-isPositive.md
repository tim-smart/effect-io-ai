Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isPositive

Checks if a given `BigDecimal` is positive.

**Example**

```ts
import { fromStringUnsafe, isPositive } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(isPositive(fromStringUnsafe("-1")), false)
assert.deepStrictEqual(isPositive(fromStringUnsafe("0")), false)
assert.deepStrictEqual(isPositive(fromStringUnsafe("1")), true)
```

**Signature**

```ts
declare const isPositive: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1380)

Since v2.0.0