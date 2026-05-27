Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.abs

Determines the absolute value of a given `BigDecimal`.

**When to use**

Use to remove the sign from a `BigDecimal` while preserving its magnitude.

**Example** (Calculating absolute values)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.abs(BigDecimal.fromStringUnsafe("-5")), BigDecimal.fromStringUnsafe("5"))
assert.deepStrictEqual(BigDecimal.abs(BigDecimal.fromStringUnsafe("0")), BigDecimal.fromStringUnsafe("0"))
assert.deepStrictEqual(BigDecimal.abs(BigDecimal.fromStringUnsafe("5")), BigDecimal.fromStringUnsafe("5"))
```

**Signature**

```ts
declare const abs: (n: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1082)

Since v2.0.0