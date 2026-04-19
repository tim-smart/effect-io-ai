Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.Equivalence

Provides an `Equivalence` instance for `BigDecimal` that determines equality between BigDecimal values.

**Example**

```ts
import { BigDecimal } from "effect"

const a = BigDecimal.fromNumberUnsafe(1.50)
const b = BigDecimal.fromNumberUnsafe(1.5)
const c = BigDecimal.fromNumberUnsafe(2.0)

console.log(BigDecimal.Equivalence(a, b)) // true (1.50 === 1.5)
console.log(BigDecimal.Equivalence(a, c)) // false (1.50 !== 2.0)
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1010)

Since v2.0.0