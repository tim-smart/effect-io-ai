Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromBigInt

Creates a `BigDecimal` from a `bigint` value.

**When to use**

Use to construct an integer `BigDecimal` from a `bigint`.

**Example** (Creating decimals from bigint)

```ts
import { BigDecimal } from "effect"

const decimal = BigDecimal.fromBigInt(123n)
console.log(BigDecimal.format(decimal)) // "123"

const largeBigInt = BigDecimal.fromBigInt(9007199254740991n)
console.log(BigDecimal.format(largeBigInt)) // "9007199254740991"
```

**See**

- `make` for constructing a decimal with an explicit scale

**Signature**

```ts
declare const fromBigInt: (n: bigint) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1259)

Since v2.0.0