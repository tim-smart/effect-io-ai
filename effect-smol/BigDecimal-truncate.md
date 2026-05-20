Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.truncate

Truncate a `BigDecimal` at the given scale. This removes fractional digits beyond the scale,
rounding toward zero.

**Example** (Truncating decimals)

```ts
import { BigDecimal } from "effect"

console.log(BigDecimal.truncate(BigDecimal.fromStringUnsafe("145"), -1)) // BigDecimal(140)
console.log(BigDecimal.truncate(BigDecimal.fromStringUnsafe("-14.5"))) // BigDecimal(-14)
```

**Signature**

```ts
declare const truncate: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1576)

Since v3.16.0