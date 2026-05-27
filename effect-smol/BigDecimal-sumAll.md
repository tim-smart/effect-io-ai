Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sumAll

Takes an `Iterable` of `BigDecimal`s and returns their sum as a single `BigDecimal`.

**When to use**

Use to sum all `BigDecimal` values in an iterable.

**Example** (Adding multiple decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.sumAll([BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("4")]),
  BigDecimal.fromStringUnsafe("9")
)
```

**See**

- `sum` for adding two `BigDecimal` values

**Signature**

```ts
declare const sumAll: (collection: Iterable<BigDecimal>) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L394)

Since v3.16.0