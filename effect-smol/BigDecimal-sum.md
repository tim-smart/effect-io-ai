Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sum

Provides an addition operation on `BigDecimal`s.

**When to use**

Use to add two `BigDecimal` values.

**Example** (Adding decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.sum(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  BigDecimal.fromStringUnsafe("5")
)
```

**See**

- `sumAll` for summing an iterable of `BigDecimal` values

**Signature**

```ts
declare const sum: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L347)

Since v2.0.0