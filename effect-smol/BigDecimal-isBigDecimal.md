Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isBigDecimal

Checks if a given value is a `BigDecimal`.

**Example**

```ts
import { BigDecimal } from "effect"

const decimal = BigDecimal.fromNumber(123.45)
console.log(BigDecimal.isBigDecimal(decimal)) // true
console.log(BigDecimal.isBigDecimal(123.45)) // false
console.log(BigDecimal.isBigDecimal("123.45")) // false
```

**Signature**

```ts
declare const isBigDecimal: (u: unknown) => u is BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L100)

Since v2.0.0