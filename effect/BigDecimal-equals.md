Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.equals

Checks whether two `BigDecimal`s are equal.

**When to use**

Use to compare two `BigDecimal` values for numeric equality.

**Example** (Checking decimal equality)

```ts
import { BigDecimal } from "effect"

const a = BigDecimal.fromStringUnsafe("1.5")
const b = BigDecimal.fromStringUnsafe("1.50")
const c = BigDecimal.fromStringUnsafe("2.0")

console.log(BigDecimal.equals(a, b)) // true
console.log(BigDecimal.equals(a, c)) // false
```

**See**

- `Equivalence` for passing decimal equality to APIs that require an `Equivalence`

**Signature**

```ts
declare const equals: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1230)

Since v2.0.0