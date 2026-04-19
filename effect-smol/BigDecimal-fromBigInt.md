Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromBigInt

Creates a `BigDecimal` from a `bigint` value.

**Example**

```ts
import { BigDecimal } from "effect"

const decimal = BigDecimal.fromBigInt(123n)
console.log(BigDecimal.format(decimal)) // "123"

const largeBigInt = BigDecimal.fromBigInt(9007199254740991n)
console.log(BigDecimal.format(largeBigInt)) // "9007199254740991"
```

**Signature**

```ts
declare const fromBigInt: (n: bigint) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1062)

Since v2.0.0