Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isInteger

Checks if a given `BigDecimal` is an integer.

**Example**

```ts
import { fromStringUnsafe, isInteger } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(isInteger(fromStringUnsafe("0")), true)
assert.deepStrictEqual(isInteger(fromStringUnsafe("1")), true)
assert.deepStrictEqual(isInteger(fromStringUnsafe("1.1")), false)
```

**Signature**

```ts
declare const isInteger: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1327)

Since v2.0.0