Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.divide

Divides `BigDecimal`s safely.

**When to use**

Use to divide `BigDecimal` values while representing division by zero as
`Option.none`.

**Details**

If the dividend is not a multiple of the divisor, the result will be a `BigDecimal` value
with up to the default division precision. If the divisor is `0`, the result
will be `Option.none()`.

**Example** (Dividing decimals safely)

```ts
import { BigDecimal, Option } from "effect"

console.log(
  Option.getOrThrow(
    BigDecimal.divide(
      BigDecimal.fromStringUnsafe("6"),
      BigDecimal.fromStringUnsafe("3")
    )
  )
) // BigDecimal(2)
console.log(
  Option.getOrThrow(
    BigDecimal.divide(
      BigDecimal.fromStringUnsafe("6"),
      BigDecimal.fromStringUnsafe("4")
    )
  )
) // BigDecimal(1.5)
console.log(
  Option.isNone(
    BigDecimal.divide(
      BigDecimal.fromStringUnsafe("6"),
      BigDecimal.fromStringUnsafe("0")
    )
  )
) // true
```

**See**

- `divideUnsafe` for division that throws when the divisor is zero
- `remainder` for the decimal remainder operation

**Signature**

```ts
declare const divide: { (that: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>; (self: BigDecimal, that: BigDecimal): Option.Option<BigDecimal>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L588)

Since v2.0.0