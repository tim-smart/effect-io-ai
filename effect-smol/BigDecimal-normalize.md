Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.normalize

Normalizes a given `BigDecimal` by removing trailing zeros.

**Example**

```ts
import { fromStringUnsafe, make, normalize } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  normalize(fromStringUnsafe("123.00000")),
  normalize(make(123n, 0))
)
assert.deepStrictEqual(
  normalize(fromStringUnsafe("12300000")),
  normalize(make(123n, -5))
)
```

**Signature**

```ts
declare const normalize: (self: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L174)

Since v2.0.0