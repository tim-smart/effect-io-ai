Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.equals

Checks if two `BigDecimal`s are equal.

**Example**

```ts
import { BigDecimal } from "effect"

const a = BigDecimal.fromNumberUnsafe(1.5)
const b = BigDecimal.fromNumberUnsafe(1.50)
const c = BigDecimal.fromNumberUnsafe(2.0)

console.log(BigDecimal.equals(a, b)) // true
console.log(BigDecimal.equals(a, c)) // false
```

**Signature**

```ts
declare const equals: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1036)

Since v2.0.0