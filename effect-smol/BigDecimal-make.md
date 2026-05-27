Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.make

Creates a `BigDecimal` from a `bigint` value and a scale.

**When to use**

Use to construct a decimal directly from its unscaled integer value and
decimal scale.

**Example** (Creating decimals from bigint and scale)

```ts
import { BigDecimal } from "effect"

// Create 123.45 (12345 with scale 2)
const decimal = BigDecimal.make(12345n, 2)
console.log(BigDecimal.format(decimal)) // "123.45"

// Create 42 (42 with scale 0)
const integer = BigDecimal.make(42n, 0)
console.log(BigDecimal.format(integer)) // "42"
```

**See**

- `fromBigInt` for constructing an integer decimal from a `bigint`

**Signature**

```ts
declare const make: (value: bigint, scale: number) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L184)

Since v2.0.0