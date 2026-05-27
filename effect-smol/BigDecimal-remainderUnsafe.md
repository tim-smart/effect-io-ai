Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.remainderUnsafe

Returns the remainder left over when one operand is divided by a second operand.

**When to use**

Use when the divisor is known to be non-zero and division by zero should be a
thrown exception.

**Gotchas**

Throws a `RangeError` if the divisor is `0`.

**Example** (Computing remainders unsafely)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.remainderUnsafe(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("2")),
  BigDecimal.fromStringUnsafe("0")
)
assert.deepStrictEqual(
  BigDecimal.remainderUnsafe(BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("2")),
  BigDecimal.fromStringUnsafe("1")
)
assert.deepStrictEqual(
  BigDecimal.remainderUnsafe(BigDecimal.fromStringUnsafe("-4"), BigDecimal.fromStringUnsafe("2")),
  BigDecimal.fromStringUnsafe("0")
)
```

**See**

- `remainder` for returning `Option.none` when the divisor is zero

**Signature**

```ts
declare const remainderUnsafe: { (divisor: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, divisor: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1202)

Since v4.0.0