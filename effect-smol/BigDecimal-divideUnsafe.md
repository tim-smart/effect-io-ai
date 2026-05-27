Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.divideUnsafe

Provides an unsafe division operation on `BigDecimal`s.

**When to use**

Use when the divisor is known to be non-zero and division by zero should be a
thrown exception.

**Details**

If the dividend is not a multiple of the divisor, the result will be a `BigDecimal` value
with up to the default division precision.

**Gotchas**

Throws a `RangeError` if the divisor is `0`.

**Example** (Dividing decimals unsafely)

```ts
import { BigDecimal } from "effect"

console.log(BigDecimal.divideUnsafe(BigDecimal.fromStringUnsafe("6"), BigDecimal.fromStringUnsafe("3"))) // BigDecimal(2)
console.log(BigDecimal.divideUnsafe(BigDecimal.fromStringUnsafe("6"), BigDecimal.fromStringUnsafe("4"))) // BigDecimal(1.5)
```

**See**

- `divide` for division that returns `Option.none` when the divisor is zero

**Signature**

```ts
declare const divideUnsafe: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L687)

Since v4.0.0