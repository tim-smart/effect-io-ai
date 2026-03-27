Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isNegative

Checks if a given `BigDecimal` is negative.

**Example**

```ts
import { fromStringUnsafe, isNegative } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(isNegative(fromStringUnsafe("-1")), true)
assert.deepStrictEqual(isNegative(fromStringUnsafe("0")), false)
assert.deepStrictEqual(isNegative(fromStringUnsafe("1")), false)
```

**Signature**

```ts
declare const isNegative: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1358)

Since v2.0.0