Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.normalize

Normalizes a given `BigDecimal` by removing trailing zeros.

**When to use**

Use to canonicalize decimals that have equivalent values but different
internal scales.

**Example** (Normalizing trailing zeros)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.normalize(BigDecimal.fromStringUnsafe("123.00000")),
  BigDecimal.normalize(BigDecimal.make(123n, 0))
)
assert.deepStrictEqual(
  BigDecimal.normalize(BigDecimal.fromStringUnsafe("12300000")),
  BigDecimal.normalize(BigDecimal.make(123n, -5))
)
```

**See**

- `format` for rendering normalized decimals as strings

**Signature**

```ts
declare const normalize: (self: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L245)

Since v2.0.0