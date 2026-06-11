Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.scale

Changes a `BigDecimal` to the specified scale.

**When to use**

Use to change how many decimal places are represented by a `BigDecimal`.

**Details**

Increasing the scale appends decimal zeros. Decreasing the scale discards
digits beyond the target scale by `bigint` division, which truncates toward
zero.

**Example** (Scaling decimal precision)

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

**See**

- `round` for changing scale with configurable rounding

**Signature**

```ts
declare const scale: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L258)

Since v2.0.0