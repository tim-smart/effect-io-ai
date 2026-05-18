Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.divideUnsafe

Provides an unsafe division operation on `BigDecimal`s.

If the dividend is not a multiple of the divisor, the result will be a `BigDecimal` value
with up to the default division precision.

Throws a `RangeError` if the divisor is `0`.

**Example** (Dividing decimals unsafely)

```ts
import { divideUnsafe, fromStringUnsafe } from "effect/BigDecimal"

console.log(divideUnsafe(fromStringUnsafe("6"), fromStringUnsafe("3"))) // BigDecimal(2)
console.log(divideUnsafe(fromStringUnsafe("6"), fromStringUnsafe("4"))) // BigDecimal(1.5)
```

**Signature**

```ts
declare const divideUnsafe: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L564)

Since v2.0.0