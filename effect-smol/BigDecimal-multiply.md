Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.multiply

Provides a multiplication operation on `BigDecimal`s.

**When to use**

Use to multiply two `BigDecimal` values.

**Example** (Multiplying decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.multiply(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  BigDecimal.fromStringUnsafe("6")
)
```

**See**

- `multiplyAll` for multiplying an iterable of `BigDecimal` values

**Signature**

```ts
declare const multiply: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L378)

Since v2.0.0