Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.scale

Scales a given `BigDecimal` to the specified scale.

If the given scale is smaller than the current scale, the value will be rounded down to
the nearest integer.

**Example**

```ts
import { BigDecimal } from "effect"

const decimal = BigDecimal.fromNumberUnsafe(123.45)

// Increase scale (add more precision)
const scaled = BigDecimal.scale(decimal, 4)
console.log(BigDecimal.format(scaled)) // "123.4500"

// Decrease scale (reduce precision, rounds down)
const reduced = BigDecimal.scale(decimal, 1)
console.log(BigDecimal.format(reduced)) // "123.4"
```

**Signature**

```ts
declare const scale: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L223)

Since v2.0.0