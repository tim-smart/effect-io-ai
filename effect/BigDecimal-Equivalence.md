Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.Equivalence

Provides an `Equivalence` instance for `BigDecimal` that determines equality between BigDecimal values.

**When to use**

Use when comparing decimal values through APIs that accept an equivalence
relation.

**Example** (Checking decimal equivalence)

```ts
import { BigDecimal } from "effect"

const a = BigDecimal.fromStringUnsafe("1.50")
const b = BigDecimal.fromStringUnsafe("1.5")
const c = BigDecimal.fromStringUnsafe("2.0")

console.log(BigDecimal.Equivalence(a, b)) // true (1.50 === 1.5)
console.log(BigDecimal.Equivalence(a, c)) // false (1.50 !== 2.0)
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1193)

Since v2.0.0