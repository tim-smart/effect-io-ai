Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isZero

Checks if a given `BigDecimal` is `0`.

**Example**

```ts
import { fromStringUnsafe, isZero } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(isZero(fromStringUnsafe("0")), true)
assert.deepStrictEqual(isZero(fromStringUnsafe("1")), false)
```

**Signature**

```ts
declare const isZero: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1344)

Since v2.0.0