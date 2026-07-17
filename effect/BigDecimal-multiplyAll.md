Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.multiplyAll

Takes an `Iterable` of `BigDecimal`s and returns their multiplication as a single `BigDecimal`.

**When to use**

Use to multiply all `BigDecimal` values in an iterable.

**Example** (Multiplying multiple decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.multiplyAll([BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("4")]),
  BigDecimal.fromStringUnsafe("24")
)
```

**See**

- `multiply` for multiplying two `BigDecimal` values

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<BigDecimal>) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L413)

Since v4.0.0